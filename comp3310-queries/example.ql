/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */

import java

from MethodAccess ma, ThrowableType tt
where ma.getMethod().getName() = "printStackTrace" and 
        ma.getQualifier().getType() = tt and
        ma.getNumArgument() = 0 or

      ma.getMethod().getName() = "getMessage" and 
       ma.getQualifier().getType() = tt

select ma
