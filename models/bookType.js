const sequelize = require('./index.js');
const {
    DataTypes,
    Model
} = require('sequelize');

class BookType extends Model {};

BookType.init({
    typename: {
        type: DataTypes.STRING,
        allowNull: false,
    },
}, {
    sequelize,
    modelName: 'BookType', // 模型名
    tableName: 'BookType', // 强行定义表名
    createdAt: true, // 是否允许创建createAt列
    updatedAt: true, // 是否允许updatedAt列
    paranoid: true,
});

module.exports = BookType;