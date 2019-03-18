package Joosc.ASTModel.ClassMember;

import Joosc.Environment.LocalEnv;
import Joosc.Exceptions.UninitializedVariableException;
import Joosc.Exceptions.UnreachableStatementException;

import java.util.HashMap;

public interface Method {
    void addLocalEnvironment(LocalEnv localEnv);
    void reachabilityAnalysis() throws UnreachableStatementException;
    void definiteAssignmentAnalysis(HashMap initializedFields) throws UninitializedVariableException;
}
