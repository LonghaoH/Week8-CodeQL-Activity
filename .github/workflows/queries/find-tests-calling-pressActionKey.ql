/**
 * @name Test Calls to pressActionKey
 * @description Finds test functions that call pressActionKey
 * @kind problem
 * @problem.severity info
 * @id js/test-calls-pressActionKey
 */

import javascript

from Function test, CallExpr call
where 
  // Find calls to pressActionKey
  call.getCalleeName() = "pressActionKey" and
  // Ensure the call is within a test function (assuming test files contain "test" or "spec")
  test.getFile().getBaseName().matches("%test%.js") and
  call.getEnclosingFunction() = test
select test, "This test calls pressActionKey"
