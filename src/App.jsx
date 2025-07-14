import MainContent from './components/MainContent';
import logo from './assets/images/logo.png';

function App() {
  return (
    <>
      <header>
        <div id="logo-img">
          <img src={logo} />
        </div>
        <h1>This is my first app</h1>
      </header>
      <MainContent />
    </>
  );
}

export default App;
