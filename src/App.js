import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className='App'>
      <header className='App-header'>
        <img src={logo} className='App-logo' alt='logo' />
        <p>My first travis-ci on Digital Ocean. Repo changed</p>
        <a
          className='App-link'
          href='https://reactjs.org'
          target='_blank'
          rel='noopener noreferrer'
        >
          Trung Kien Learn React, Yay!
        </a>
      </header>
    </div>
  );
}

export default App;
