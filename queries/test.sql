
-- name: QueryBetweenBroken :many
SELECT id FROM test
WHERE name = ?
AND id BETWEEN ? AND ?;

-- name: QueryBetweenNamedBroken :many
SELECT id FROM test
WHERE name = :name
AND id BETWEEN :min AND :max;

-- name: QueryBetweenWorking :many
SELECT id FROM test
WHERE id BETWEEN ? AND ?
AND name = ?;

-- name: QueryBetweenNamedWorking :many
SELECT id FROM test
WHERE id BETWEEN :min AND :max
AND name = :name;