const mysql = require("mysql");
const inquirer = require("inquirer");
require("console.table");

// Initialize connection
const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "Alexmac34",
    database: "bamazon"
});

// Creating connection
connection.connect(function (err) {
    if (err) {
        console.error("error connecting: " + err.stack);
    }
    loadProducts();
});

// Function to load the products table and print results
function loadProducts() {
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;
        console.table(res);

        promptCustomerForItem(res);
    });
}