// let p = fetch("https://www.omdbapi.com/?s=starwars&apikey=f10c4c5c");

// p.then((response) => {
//     if (!response.ok) {
//         throw new Error(`HTTP error! Status: ${response.status}`);
//     }
//     return response.json();
// }).then((data) => {
//     console.log(data);
// }).catch((error) => {
//     console.error("Fetch error:", error);
// });


let p = fetch("https://www.omdbapi.com/?s=starwars&apikey=f10c4c5c");

p.then((response) => {
    if (!response.ok) {
        throw new Error(`HTTP error! Status: ${response.status}`);
    }
    return response.json();
}).then((data) => {
    console.log(data); // Logging the fetched data
}).catch((error) => {
    console.error("Fetch error:", error);
});
