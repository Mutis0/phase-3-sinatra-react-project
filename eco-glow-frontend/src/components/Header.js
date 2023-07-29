import React from 'react';

function Header(){
    return(
        <header>
            <div className="header">
                <img src="" alt="" />
            </div>

            <nav className="navigation">
                <ul>
                    <li><a href='/'>Home</a></li>
                    <li><a href='/products'>Products</a></li>
                    <li><a href='/about'>About Us</a></li>
                </ul>
                </nav>

                <div className="search-bar">
                    <input type="text" placeholder="Search for products" />
                    <button>Search</button>
                </div>
        </header>
    );
 };

 export default Header;