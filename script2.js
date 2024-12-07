document.addEventListener('DOMContentLoaded', () => {
    // Select all remove buttons
    const removeButtons = document.querySelectorAll('tbody .fa-times-circle');

    // Function to remove the item row
    const removeItem = (event) => {
        const buttonClicked = event.target;
        const rowToRemove = buttonClicked.closest('tr'); // Get the closest table row
        rowToRemove.remove(); // Remove the row from the table

        updateCartTotals(); // Update the totals after removing an item
    };

    // Attach event listeners to all remove buttons
    removeButtons.forEach(button => {
        button.addEventListener('click', removeItem);
    });

    // Function to update cart totals
    const updateCartTotals = () => {
        const subtotalElements = document.querySelectorAll('tbody td:nth-child(6)');
        const totalElement = document.querySelector('.subtotal table tr:last-child td:last-child');
        let total = 0;

        subtotalElements.forEach(subtotalElement => {
            const subtotal = parseFloat(subtotalElement.textContent.replace('$', '')) || 0;
            total += subtotal;
        });

        totalElement.textContent = `$${total.toFixed(2)}`;
    };

    updateCartTotals(); // Initial calculation of totals on page load
});
