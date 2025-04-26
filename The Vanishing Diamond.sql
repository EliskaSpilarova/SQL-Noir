SELECT renter_guest_id
FROM marina_rentals
WHERE rental_date = '19870520'
  AND renter_guest_id IN (
    SELECT guest_id
    FROM attire_registry
    WHERE note LIKE '%navy suit%' AND note LIKE '%white tie%'
  );

SELECT guest_id, confession
FROM confessions
WHERE guest_id IN (112, 145, 167, 190, 105);
