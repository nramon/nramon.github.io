// Pad hours, minutes or seconds to two digits.
function pad(num) {
    return num < 10 ? "0" + num : num;
}

// Print the current date to the element #date.
function printDate() {
    d = new Date();
    date_str = d.toDateString(); 
    time_str = pad(d.getHours()) + ':' + pad(d.getMinutes()) + ':' + pad(d.getSeconds()) + ' ';
    document.getElementById('date').innerHTML = date_str.substring(0, date_str.length - 4) + time_str + date_str.substring(date_str.length - 4);
}
