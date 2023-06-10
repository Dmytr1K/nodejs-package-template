#!/usr/bin/env node

import greet from '../index.js';

// @ts-check
/**
 * @return {string}
 */
const getArgument = () => {
  const argument = process.argv[process.argv.length - 1];
  return argument;
};

console.log(greet(getArgument()));
