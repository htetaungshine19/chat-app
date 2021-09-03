import "./App.css";
import {
  BrowserRouter,
  Link,
  Route,
  Switch,
  useRouteMatch,
} from "react-router-dom";

function A() {
  return <div>A</div>;
}
function B() {
  return <div>b</div>;
}
function C() {
  const { path, url } = useRouteMatch();

  return (
    <div>
      Not Found
      <Link to={`${url}/xd`}>xd</Link>
      <Switch>
        <Route path={`${path}/xd`} component={B} exact />
      </Switch>
    </div>
  );
}

function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <Link to="/test">TO B</Link>
        <Link to="/">TO A</Link>
      </div>
      <Switch>
        <Route path="/" component={A} exact />
        <Route path="/test" component={C} />
        <Route component={C} />
      </Switch>
    </BrowserRouter>
  );
}

export default App;
