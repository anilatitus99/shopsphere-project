from flask import Flask, jsonify, request
import os

app = Flask(__name__)

# Root route for testing
@app.route('/')
def home():
    return jsonify({'message': 'Backend is running successfully!'})

# Example route for products
@app.route('/products', methods=['GET'])
def get_products():
    sample_products = [
        {"id": 1, "name": "Laptop", "price": 1000},
        {"id": 2, "name": "Mouse", "price": 20}
    ]
    return jsonify(sample_products)

# Example POST route for adding a product
@app.route('/products', methods=['POST'])
def add_product():
    data = request.get_json()
    return jsonify({"message": "Product added!", "product": data}), 201

if __name__ == '__main__':
    port = int(os.environ.get("PORT", 8080))
    app.run(host='0.0.0.0', port=port)
    