// Initialize an empty cart (can also use localStorage for persistence across sessions)
let cart = JSON.parse(localStorage.getItem('cart')) || [];

// Function to add products to the cart
function addToCart(id, name, price, image) {
    // Create a product object
    let product = {
        id: id,
        name: name,
        price: price,
        image: image,
        quantity: 1
    };

    // Check if the product already exists in the cart
    let productIndex = cart.findIndex(item => item.id === id);
    if (productIndex !== -1) {
        // If the product is already in the cart, increase its quantity
        cart[productIndex].quantity++;
    } else {
        // Otherwise, add the new product to the cart
        cart.push(product);
    }

    // Save the cart to local storage to persist it
    localStorage.setItem('cart', JSON.stringify(cart));

    // Update the cart icon or cart page
    updateCartIcon();
}

// Function to update the cart icon with the number of items in the cart
function updateCartIcon() {
    let cartIcon = document.getElementById('lg-bag');
    let totalItems = cart.reduce((total, item) => total + item.quantity, 0);
    cartIcon.innerHTML = `<i class="far fa-shopping-bag"></i> ${totalItems}`;
}

// Call updateCartIcon initially to set the correct cart count when the page loads
updateCartIcon();
