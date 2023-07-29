import React, { useEffect, useState } from 'react';
import { BrowserRouter as Router } from 'react-router-dom';
import Header from './components/Header';
import ProductCard from './components/ProductCard';
import Cart from './components/Cart';
import productsData from './productsData';
import './App.css';
import Cookies from 'js-cookie';

const App = () => {
  const [cart, setCart] = useState([]);

  useEffect(() => {
    const cartItemsCookie = Cookies.get('cartItems');
    if (cartItemsCookie) {
      setCart(JSON.parse(cartItemsCookie));
    }
  }, []);

  const handleDecrement = (itemId) => {
    const updatedCart = cart.map((item) =>
      item.id === itemId ? { ...item, quantity: Math.max(item.quantity - 1, 0) } : item
    );
    setCart(updatedCart);
    Cookies.set('cartItems', JSON.stringify(updatedCart), { sameSite: 'strict' });
  };

  const handleIncrement = (itemId) => {
    const updatedCart = cart.map((item) =>
      item.id === itemId ? { ...item, quantity: item.quantity + 1 } : item
    );
    setCart(updatedCart);
    Cookies.set('cartItems', JSON.stringify(updatedCart), { sameSite: 'strict' });
  };

  const handleRemove = (itemId) => {
    const updatedCart = cart.filter((item) => item.id !== itemId);
    setCart(updatedCart);
    Cookies.set('cartItems', JSON.stringify(updatedCart), { sameSite: 'strict' });
  };

  

  return (
    <Router>
      <div className="App">
        <Header />
        <main>
          <h1>Welcome to Eco Glow</h1>
          <div className="product-grid">
            {productsData.map((product) => (
              <ProductCard key={product.id} product={product} />
            ))}
          </div>
          <Cart
            cartItems={cart}
            onDecrement={handleDecrement}
            onIncrement={handleIncrement}
            onRemove={handleRemove}
          />
        </main>
      </div>
    </Router>
  );
};

export default App;
