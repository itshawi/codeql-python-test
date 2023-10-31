/**
 * @name Function with 'debug_' prefix
 * @description Identifies functions that start with the 'debug_' prefix, which might indicate debug code left in production.
 * @kind problem
 * @severity error
 * @tags maintainability, debug-code
 * @precision high
 */

import python

from Function f
where f.getName().matches("debug_%")
select f, "This function starts with 'debug_' prefix."
