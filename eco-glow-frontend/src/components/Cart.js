import React from 'react';

const Cart = ({ cartItems, onIncrement, onDecrement, onRemove }) => {
  const total = cartItems.reduce((acc, item) => acc + item.price * item.quantity, 0);

  const handleIncrement = (itemId) => {
    onIncrement(itemId);
  };

  const handleDecrement = (itemId) => {
    onDecrement(itemId);
  };

  const handleRemove = (itemId) => {
    onRemove(itemId);
  };

  return (
     <div className="cart">
      <h2>Your Cart</h2>
      <ul>
        {cartItems.map((item) => (
          <li key={item.id}>
            <span>{item.name}</span>
            <div>
              <button onClick={() => handleDecrement(item.id)}>-</button>
              <span>Quantity: {item.quantity}</span>
              <button onClick={() => handleIncrement(item.id)}>+</button>
            </div>
            <span>Price: ${item.price * item.quantity}</span>
            <button onClick={() => handleRemove(item.id)}>Remove</button>
          </li>
        ))}
      </ul>
      <h3>Total: ${total.toFixed(2)}</h3>
      <button>Proceed to Checkout</button>
    </div>
  );
};

export default Cart;
