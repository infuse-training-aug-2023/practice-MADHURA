let p = fetch("https://www.omdbapi.com/?s=starwars&apikey=f10c4c5c");

p.then((response) => {
    if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
    }
    return response.json();
}).then((data) => {
    console.log(data);
}).catch((error) => {
    console.error("Fetch error:", error);
});

document.addEventListener("DOMContentLoaded", function() {
    const searchInput = document.getElementById("searchInput");
    const movieCardContainer = document.querySelector(".movie-card-container");
    const sortSelect = document.getElementById("sortSelect");

    searchInput.addEventListener("keydown", function(event) {
        if (event.key === "Enter") {
            performSearch();
        }
    });

    sortSelect.addEventListener("change", function() {
        performSearch();
    });

    function performSearch() {
        const searchTerm = searchInput.value;
        const sortValue = sortSelect.value;
        const apiUrl = `https://www.omdbapi.com/?s=${searchTerm}&apikey=f10c4c5c`;

        fetch(apiUrl)
            .then(response => response.json())
            .then(data => {
                let movies = data.Search || [];
                if (sortValue === "year") {
                    movies = movies.sort((a, b) => a.Year.localeCompare(b.Year));
                }
                displayMovies(movies);
            })
            .catch(error => {
                console.error("Fetch error:", error);
            });
    }

    function displayMovies(movies) {
        movieCardContainer.innerHTML = '';

        movies.forEach(movie => {
            const card = createMovieCard(movie);
            movieCardContainer.appendChild(card);
        });
    }

    function createMovieCard(movie) {
        const card = document.createElement("div");
        card.classList.add("movie-card");

        const poster = movie.Poster === "N/A" ? "no_image_available.png" : movie.Poster;
        const title = movie.Title;
        const year = movie.Year;
        const runtime = movie.Runtime;
        const genre = movie.Genre;
        const director = movie.Director;
        const actors = movie.Actors;
        const plot = movie.Plot;

        card.innerHTML = `
            <img src="${poster}" alt="${title} poster">
            <h3>${title} (${year})</h3>
            <p><strong>Runtime:</strong> ${runtime}</p>
            <p><strong>Genre:</strong> ${genre}</p>
            <p><strong>Director:</strong> ${director}</p>
            <p><strong>Actors:</strong> ${actors}</p>
            <p><strong>Plot:</strong> ${plot}</p>
            <button class="view-more-button" data-movie='${JSON.stringify(movie)}'>View More</button>
        `;

        return card;
    }

    document.addEventListener("click", function(event) {
        if (event.target.classList.contains("view-more-button")) {
            const movie = JSON.parse(event.target.dataset.movie);
            openSidePanel(movie);
        }
    });

    function openSidePanel(movie) {
        const sideIframe = document.getElementById("sideIframe");
        const omdbApiUrl = `http://www.omdbapi.com/?i=${movie.imdbID}&apikey=f10c4c5c`;

        fetch(omdbApiUrl)
            .then(response => response.json())
            .then(movieData => {
                const movieDetails = JSON.stringify(movieData, null, 2);
                sideIframe.src = `data:text/html;charset=utf-8,<pre>${encodeURIComponent(movieDetails)}</pre>`;
                document.getElementById("side-panel").classList.add("open");
            })
            .catch(error => {
                console.error("Fetch error:", error);
            });
    }

    const closeButton = document.querySelector(".close-button");
    closeButton.addEventListener("click", closeSidePanel);

    function closeSidePanel() {
        const sideIframe = document.getElementById("sideIframe");
        sideIframe.src = "";
        document.getElementById("side-panel").classList.remove("open");
    }

    // Initial search when the page loads
    performSearch();
});
