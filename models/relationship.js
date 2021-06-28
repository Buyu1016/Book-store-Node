/**
 * 表之间的关联
 */

const BookType = require('./bookType.js');
const Book = require('./book.js');
// 因为暂时不会处理
BookType.hasMany(Book);
Book.belongsTo(BookType);

console.log(`表关系建立成功`);