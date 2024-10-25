/**
 * @name Long Functions
 * @description Finds functions that are longer than 10 lines
 * @kind problem
 * @problem.severity warning
 * @id js/long-function
 */

import javascript

from Function f
where f.getNumLines() > 10
select f, "This function is " + f.getNumLines().toString() + " lines long, which exceeds the 10-line threshold."