const elements = document.querySelectorAll('span.TermText.notranslate.lang-en');
const header = document.querySelector('h1.tz2ipyx');
let oddElements = [];
elements.forEach((element, index) => {
    if (index % 2 !== 0) {
        oddElements.push("&emsp;");
oddElements.push(element.textContent)
        
    } else {
        oddElements.push("<br>");
                oddElements.push(`<strong>${element.textContent}</strong>`)
    }
});
oddElements.push("<br>");
oddElements.push(`<h1>${header.textContent}</h1>`);
oddElements.reverse();
const newWindow = window.open('', '_blank');
newWindow.document.write(oddElements.join(''));