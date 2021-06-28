const sequelize = require('./models/index.js');

(async function test() {
    try {
        await sequelize.authenticate();
        console.log(`数据库已链接成功`);
        await require("./init.js");
        const { addBook } = require('./services/bookService.js');
        // queryBook(1,10,"", "Java").then(resp => {
        //     console.log(resp);
        // });
        // addBook({
        //     bookname: "计算机网络技术及应用",
        //     imgUrl: "http://resource.ityxb.com/uploads/book/computerInternet/book.jpg",
        //     press: "人民邮电出版社",
        //     identifier: "ISBN：978-7-115-49441-2",
        //     price: "39.80",
        //     BookTypeId: 17,
        // }).then(resp => {
        //     console.log(resp);
        // });
        // const { register } = require('./services/userService.js');
        // register("CodeGorgeous", "123123").then(resp => {
        //     console.log(resp);
        // });
    }catch(err) {
        console.log(`数据库链接发生错误，错误原因：${err}`);
    }
})();