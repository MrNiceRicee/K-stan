import React, { useEffect, useState, useContext } from 'react'
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link,
  MemoryRouter
} from 'react-router-dom';
import ThemeProvider from '@material-ui/styles/ThemeProvider';
import { createTheme } from '@material-ui/core/styles';
import { deepPurple, grey } from '@material-ui/core/colors';
import { Search, PeopleAlt, Star, AccountCircle } from '@material-ui/icons';
import {
  CssBaseline, useMediaQuery,
  Box, Typography, Container
} from '@material-ui/core';

import IdolStart from './idols/IdolStart';
import GroupStart from './groups/GroupStart';
import TopBar from './TopBar';
import BottomBar from './BottomBar';
import IdolFocus from './idols/IdolFocus';
import GroupFocus from './groups/GroupFocus';
import SearchStart from './Search/SearchStart';
import ServerContext from './context/ServerConn';
// import ThemeColors from './context/ThemeColors';


function App() {
  const prefersDarkMode = useMediaQuery('(prefers-color-scheme: dark)');
  const [darkMode, setDarkMode] = useState(false);
  let palleteType = darkMode ? 'dark' : 'light';
  let primaryColor = darkMode ? deepPurple[300] : deepPurple[700];
  let bgColor = darkMode ? grey[900] : grey[200];

  useEffect(() => {
    setDarkMode(prefersDarkMode);
  }, []);

  const themeDesign = createTheme({
    palette: {
      primary: {
        main: primaryColor,
      },
      background: {
        defualt: bgColor
      },
      type: palleteType,
    },
    custom: {
      code: {
        backgroundColor: grey[600],
        paddingTop: '1em',
        paddingBottom: '1em',
      },
      brand: {
        flexGrow: 1,
        paddingTop: '.3em',
        paddingBottom: '.3em',
      },
      square: factor => ({
        width: `${8 * factor}px`,
        height: `${8 * factor}px`,
      }),
      padding: factor => ({
        padding: `${8 * factor}px`,
      }),
      paddingx: factor => ({
        paddingLeft: `${8 * factor}px`,
        paddingRight: `${8 * factor}px`
      }),
      paddingy: factor => ({
        paddingTop: `${8 * factor}px`,
        paddingBottom: `${8 * factor}px`
      }),
      marginx: factor => ({
        marginLeft: `${8 * factor}px`,
        marginRight: `${8 * factor}px`
      }),
      marginy: factor => ({
        marginTop: `${8 * factor}px`,
        marginBottom: `${8 * factor}px`
      }),
      muted: {
        color: '#bdbdbd',
      },
      grey: variant => ({
        color: grey[variant],
      }),
      groupPic: {
        width: '100%',
        height: '100%',
        objectFit: 'cover',
      }
    },
    spacing: factor => `${8 * factor}px`,
  });

  return (
      <MemoryRouter initialEntries={[{pathname: '/idols'}]}>
        <ThemeProvider theme={themeDesign}>
          <ServerContext.Provider value={'http://127.0.0.1:8000'}>
            <CssBaseline />
            <TopBar setDarkMode={setDarkMode} darkMode={darkMode} />
            <Container style={{...themeDesign.custom.padding(0), marginBottom: '4em'}} maxWidth="sm">
              <Switch>
                <Route exact path="/idols">
                  <IdolStart />
                </Route>
                <Route exact path="/groups">
                  <GroupStart />
                </Route>
                <Route path="/search">
                  <SearchStart />
                </Route>
                <Route path="/me">
                  <Box style={{...themeDesign.custom.code, height: '100vh'}}>Nothing in "Me" profile yet!</Box>
                </Route>
                <Route path="/idols/:id">
                  <IdolFocus />
                </Route>
                <Route path="/groups/:id">
                  <GroupFocus />
                </Route>
              </Switch>
            </Container>
            <BottomBar />
          </ServerContext.Provider>
        </ThemeProvider>
      </MemoryRouter>
  )
}

export default App
