/**
 * Book模型管理
 */

const Book = require('../models/book.js');
const BookType = require('../models/bookType.js');
const { Op } = require('sequelize');

module.exports = {
    // 模糊分页查询
    async queryBook(page=1, limit=10, name, type) {
        let where = {};
        if(name) {
            where.bookname = {
                [Op.like]: `%${name}%`
            }
        }
        let where1 = {};
        if(type) {
            where1.typename = {
                [Op.like]: `%${type}%`
            }
        }
        const results = await Book.findAndCountAll({
            attributes: ["id", "bookname", "imgUrl", "press", "identifier", "author", "price"],
            where,
            include: [{
                model: BookType,
                where: where1,
            }],
            offset: (page - 1) * limit,
            limit: +limit,
        });
        if(results.rows.length > 0) {
            return {
                state: 'success',
                total: results.count,
                data: JSON.parse(JSON.stringify(results.rows)),
            };
        }else {
            return {
                state: 'fail',
                total: 0,
                data: [],
            };
        }
    },
    async addBook(bookMessage) {
        if (!bookMessage.bookname || !bookMessage.imgUrl || !bookMessage.identifier) {
            return {
                state: 'fail',
                data: bookMessage
            }
        }else {
            const ins = await Book.create(bookMessage);
            return {
                state: 'success',
                data: ins.toJSON(),
            };
        }
    }
}