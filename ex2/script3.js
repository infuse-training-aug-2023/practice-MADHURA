const timeElement = document.getElementById('time');
const darkModeToggle = document.getElementById('darkModeToggle');

function updateClock() {
  const now = new Date();
  const hours = now.getHours().toString().padStart(2, '0');
  const minutes = now.getMinutes().toString().padStart(2, '0');
  const seconds = now.getSeconds().toString().padStart(2, '0');
  timeElement.textContent = `${hours}:${minutes}:${seconds}`;
}

setInterval(updateClock, 1000);

darkModeToggle.addEventListener('change', () => {
  document.body.classList.toggle('dark-mode', darkModeToggle.checked);
});
