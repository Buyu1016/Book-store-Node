/**
 * 此模块用于抓取网页数据
 */
 const axios = require('axios').default;
 const cheerio = require('cheerio');

async function getBooksHTML(url) {
    return data = await axios.get(url).then(resp => {
        return resp.data;
    });
};

async function getBooksMessages() {
    const html = await getBooksHTML("http://resource.ityxb.com/booklist/find.html?filter%5B0%5D=&id=61&diyname=find&page=3");
    const $ = cheerio.load(html);
    const oDivs = $('.book-list .col-md-10 .article-list-body .article-list-main .article-section .row')
    
}