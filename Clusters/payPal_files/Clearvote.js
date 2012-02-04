
// Provide a default path to dwr.engine
if (dwr == null) var dwr = {};
if (dwr.engine == null) dwr.engine = {};
if (DWREngine == null) var DWREngine = dwr.engine;

if (Clearvote == null) var Clearvote = {};
Clearvote._path = '/dwr';
Clearvote.addVote = function(p0, p1, p2, callback) {
  dwr.engine._execute(Clearvote._path, 'Clearvote', 'addVote', p0, p1, p2, callback);
}
Clearvote.getVoteCount = function(p0, p1, callback) {
  dwr.engine._execute(Clearvote._path, 'Clearvote', 'getVoteCount', p0, p1, callback);
}
Clearvote.getVoteScore = function(p0, p1, callback) {
  dwr.engine._execute(Clearvote._path, 'Clearvote', 'getVoteScore', p0, p1, callback);
}
Clearvote.setClearvoteManager = function(p0, callback) {
  dwr.engine._execute(Clearvote._path, 'Clearvote', 'setClearvoteManager', p0, callback);
}
