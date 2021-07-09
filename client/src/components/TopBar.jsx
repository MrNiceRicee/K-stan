import React from 'react';
import { AppBar, Typography, Switch, Toolbar, Hidden, Box } from '@material-ui/core';
import { useTheme } from '@material-ui/core/styles';

const TopBar = ({ darkMode, setDarkMode }) => {
  const ThemeDesign = useTheme();

  return (
  <AppBar position="sticky">
    <Toolbar>
      <Hidden smUp>
        <Box style={{flexGrow: 1.5}} />
      </Hidden>
      <Typography variant="h6" style={{flexGrow: 1}}>
        K-Stan
      </Typography>
      <Switch checked={darkMode} onChange={() => setDarkMode(!darkMode)} color="secondary" style={{}}/>
    </Toolbar>
  </AppBar>
  )
};

export default TopBar;