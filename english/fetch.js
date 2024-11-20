const links = document.querySelectorAll('a.UILink');
const hrefs = Array.from(links).map(link => link.href);

const spans = document.querySelectorAll('span.SetPreview-cardHeaderTitle');
const titles = Array.from(spans).map(span => span.textContent.trim());

const isGerman = (text) => {
    const germanWords = /\b(?:und|oder|Lektion|Kurs|Wortschatz|Wendungen|Zeit|Momente|Menschen|Familienstand|Grammatik|Kurssprache|Regeln|Missverstaendnisse|Lernwortschatz)\b/i;
    const germanChars = /[äöüß]/i;

    return germanWords.test(text) || germanChars.test(text);
};

const englishTitles = titles.filter(title => !isGerman(title));
const englishLinks = hrefs.filter((_, index) => !isGerman(titles[index]));

const sortedTitlesWithLinks = englishTitles
    .map((title, index) => ({ title, link: englishLinks[index] || '#' }))
    .sort((a, b) => a.title.localeCompare(b.title));

let oddElements = [];
oddElements.push(`<h2>Quiz</h2>`);

sortedTitlesWithLinks.forEach(({ title, link }) => {
    oddElements.push(`<p>${title}</p>`);
    oddElements.push(`<a href="${link}" target="_blank">${link}</a>`);
});

const newWindow = window.open('', '_blank');
newWindow.document.write(oddElements.join(''));
newWindow.document.close();