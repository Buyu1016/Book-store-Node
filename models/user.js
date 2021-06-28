/**
 * User模型
 */
const sequelize = require('./index.js');
const { DataTypes, Model } = require('sequelize');

class User extends Model {};

User.init({
    name: {
        type: DataTypes.STRING,
        allowNull: false,
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false,
    }
    },{
    sequelize,
    modelName: 'User', // 模型名
    tableName: 'User', // 强行定义表名
    createdAt: false, // 是否允许创建createAt列
    updatedAt: false, // 是否允许updatedAt列
    paranoid: false, // 开启后会多
});

module.exports = User;