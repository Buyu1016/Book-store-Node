const express = require('express');
const app = express();
const cors = require('cors');

app.use(cors());
app.use(express.urlencoded({
    extended: true,
}));
app.use(express.json());
app.use(require("./middleware/errorMiddleware.js"));

app.use("/api/user", require("./api/user.js"));
app.use("/api/books", require("./api/books.js"));
app.use("/api/booktype", require("./api/booktype.js"));

app.listen(2550, () => {
    console.log(`开始监听2550端口活动`);
});