function showTime() {
    var date = new Date();
    var hrs = date.getHours().toString().padStart(2, '0');
    var min = date.getMinutes().toString().padStart(2, '0');
    var sec = date.getSeconds().toString().padStart(2, '0');
    var addTime = hrs + ":" + min + ":" + sec;
 
    timeElement.innerHTML = addTime; 
}  