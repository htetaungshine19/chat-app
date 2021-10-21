import React from "react";
import {
  BrowserRouter,
  Link,
  Route,
  Switch,
  useRouteMatch,
} from "react-router-dom";

export const Nav = (props) => {
  console.log(props);
  return (
    <Switch>
      <Route path="/" component={A} exact />
      <Route path="/test" component={C} />
      <Route component={C} />
    </Switch>
  );
};
function A() {
  return <div>A</div>;
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

function B() {
  return <div>b</div>;
}
