/**
 * User模型操作管理
 */
const User = require('../models/user.js');

module.exports = {
    // 登录校验     因为是大作业所以就不做找回密码这种复杂操作
    async login(name, password) {
        const result = await User.findOne({
            where: {
                name,
                password,
            },
        });
        if(result) {
            return {
                state: "success",
                data: result.toJSON(),
            }
        }else {
            return {
                state: "fail",
                data: {},
            }
        }
    },
    // 注册
    async register(name, password) {
        if(!name || !password) {
            return {
                state: 'fail',
                data: {},
            }
        }else {
            // 账号名不能重复
            const results = await User.findOne({
                where: {
                    name,
                },
            });
            if(results) {
                return {
                    state: 'fail',
                    data: {},
                }
            }else {
                const results = await User.create({
                    name,
                    password
                });
                return {
                    state: 'success',
                    data: results.toJSON(),
                }
            }
        }
    },
    // 查询所有用户
    async getAllUser () {
        const results = await User.findAndCountAll();
        if (results.rows.length > 0) {
            return {
                state: 'success',
                total: results.count,
                data: JSON.parse(JSON.stringify(results.rows)),
            };
        } else {
            return {
                state: 'fail',
                total: 0,
                data: [],
            };
        }
    }
}