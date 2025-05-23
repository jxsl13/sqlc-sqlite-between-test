
-- name: QueryBetween :many
SELECT id FROM test
WHERE name = ?
AND id BETWEEN ? AND ?;