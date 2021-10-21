import {
  BrowserRouter,
  Link,
  Route,
  Switch,
  useRouteMatch,
} from "react-router-dom";
import { Nav } from "./utils/navigation";

function App() {
  const a = {
    b: "a",
  };
  return (
    <BrowserRouter>
      <div className="App">
        <Link to="/test">TO B</Link>
        <Link to="/">TO A</Link>
      </div>
      <Nav />
    </BrowserRouter>
  );
}

export default App;
