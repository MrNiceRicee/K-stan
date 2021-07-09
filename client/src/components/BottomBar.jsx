import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import { Search, PeopleAlt, Star, AccountCircle } from '@material-ui/icons';
import {
  BottomNavigation, BottomNavigationAction,
  AppBar, Box
} from '@material-ui/core';
import { grey } from '@material-ui/core/colors';


const BottomBar = () => {
  const [navValue, setNavValue] = useState(3);

  return(
    <Box
      component={BottomNavigation}
      value={navValue}
      onChange={(event, newValue) => {
        setNavValue(newValue);
      }}
      showLabels
      borderTop={1}
      style={{ width: '100%', position: 'fixed', bottom: '0', height: '4em' }}
    >
      <BottomNavigationAction component={Link} to="/me" label="Me" icon={<AccountCircle />}/>
      <BottomNavigationAction component={Link} to="/search" label="Search" icon={<Search />}/>
      <BottomNavigationAction component={Link} to="/groups" label="Groups" icon={<PeopleAlt />}/>
      <BottomNavigationAction component={Link} to="/idols" label="Idols" icon={<Star />}/>
    </Box>
  );
}

export default BottomBar;