/**
 * @description Minimal Invocable Apex example for use in Flow.
 *              Accepts a list of record Ids and returns a simple success message per input.
 * @author Agentforce
 */
public with sharing class BasicInvocable {
    public class Request {
        @InvocableVariable(required=true)
        public Id recordId;
    }

    public class Response {
        @InvocableVariable
        public Id recordId;
        @InvocableVariable
        public Boolean success;
        @InvocableVariable
        public String message;
    }

    @InvocableMethod(label='Basic Invocable' description='Minimal example that echoes each input Id.')
    public static List<Response> execute(List<Request> requests) {
        List<Response> results = new List<Response>();
        if (requests == null || requests.isEmpty()) {
            return results;
        }
        for (Request r : requests) {
            Response res = new Response();
            res.recordId = (r == null) ? null : r.recordId;
            if (r == null || r.recordId == null) {
                res.success = false;
                res.message = 'recordId is required.';
            } else {
                res.success = true;
                res.message = 'Processed ' + r.recordId;
            }
            results.add(res);
        }
        return results;
    }
}