/**
 * sequelize配置
 */

const { Sequelize } = require('sequelize');
// 链接数据库
const sequelize = new Sequelize('library', 'root', '123456', {
    host: 'localhost',
    dialect: 'mysql',
    logging: null,
});

module.exports = sequelize;