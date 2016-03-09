
SELECT dog_owners.name AS dog_owner, lost_dog_collars.dog_name
  FROM lost_dog_collars
  JOIN dog_owners
  ON (dog_owners.dog_name = lost_dog_collars.dog_name)
  WHERE dog_owners.name IS NOT NULL;

SELECT dog_owners.name AS dog_owner, lost_dog_collars.dog_name
  FROM lost_dog_collars
  FULL OUTER JOIN dog_owners
  ON (dog_owners.dog_name = lost_dog_collars.dog_name)
  WHERE dog_owners.name IS NULL;

SELECT lost_dog_collars.dog_name, dog_owners.name AS dog_owner
  FROM lost_dog_collars
  LEFT JOIN dog_owners
  ON (dog_owners.dog_name = lost_dog_collars.dog_name);

SELECT dog_owners.name AS dog_owner, lost_dog_collars.dog_name
  FROM dog_owners
  LEFT JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name);
