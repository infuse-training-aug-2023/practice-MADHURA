// import logo from './logo.svg';
// import './App.css';

// function App() {
//   return (
//     <div className="App">
//       <header className="App-header">
//         <img src={logo} className="App-logo" alt="logo" />
//         <p>
//           Edit <code>src/App.js</code> and save to reload.
//         </p>
//         <a
//           className="App-link"
//           href="https://reactjs.org"
//           target="_blank"
//           rel="noopener noreferrer"
//         >
//           Learn React
//         </a>
//       </header>
//     </div>
//   );
// }

// export default App;
import React from 'react';
import Header from './components/Header';
import Home from './components/Home';
import Footer from './components/Footer'; // Add this line

const App = () => {
  return (
    <div>
      <Header />
      <main>
        <Home />
      </main>
      <Footer /> {/* Add this line */}
    </div>
  );
};

export default App;


