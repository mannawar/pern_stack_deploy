const express = require("express");
const app = express();
const cors = require("cors");

//middleware

app.use(cors());
app.use(express.json());
app.use(express.static('build'))

//routes

//register and login routes
app.use("/authentication", require("./routes/jwtAuth"));


//dashboard route
app.use("/dashboard", require("./routes/dashboard"));

const PORT = process.env.PORT || 5000
app.listen(PORT, () => {
  console.log(`Server is running on port {PORT}`);
});