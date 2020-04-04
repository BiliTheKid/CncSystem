import React from 'react';
import {
  Switch,
  Route,
  useRouteMatch,
} from "react-router-dom";
import { TopBar } from '../components/TopBar';
import { Report } from '../components/report/Report';


const styles = {
  container: {
    height: '100%',
    background: '#E5E5E5'
  },
  page: {
    margin: '45px 50px 0 50px',
    minHeight: 500,
  }
};

export const MainDashboard = ({ store }) => {
  let match = useRouteMatch();
  return (
    <div style={styles.container}>
      <TopBar currentUser={store.main.currentUser} />
      <div style={styles.page}>
        <Switch>
          <Route path={`${match.path}/:medicalCenterId`}>
            <Report medicalCenter={store.main.entity} />
          </Route>
        </Switch>
      </div>
    </div>
  )
};
