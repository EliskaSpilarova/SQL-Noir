SELECT renter_guest_id
FROM marina_rentals
WHERE rental_date = '19870520'
  AND renter_guest_id IN (
    SELECT guest_id
    FROM attire_registry
    WHERE note LIKE '%navy suit%' AND note LIKE '%white tie%'
  );
