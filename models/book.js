const sequelize = require('./index.js');
const {
    DataTypes,
    Model
} = require('sequelize');

class Book extends Model {};

Book.init({
    bookname: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    imgUrl: {
        type: DataTypes.STRING,
    },
    press: {
        type: DataTypes.STRING,
        defaultValue: "人民邮电出版社",
    },
    identifier: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    author: {
        type: DataTypes.STRING,
        defaultValue: "黑马程序员",
    },
    price: {
        type: DataTypes.STRING,
    }
}, {
    sequelize,
    modelName: 'Book', // 模型名
    tableName: 'Books', // 强行定义表名
    createdAt: true, // 是否允许创建createAt列
    updatedAt: true, // 是否允许updatedAt列
    paranoid: true,
});

module.exports = Book;