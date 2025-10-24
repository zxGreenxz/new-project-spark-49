-- Add 'draft' status to purchase_orders status constraint
ALTER TABLE purchase_orders 
DROP CONSTRAINT IF EXISTS purchase_orders_status_check;

ALTER TABLE purchase_orders 
ADD CONSTRAINT purchase_orders_status_check 
CHECK (status IN ('draft', 'pending', 'received', 'confirmed', 'completed', 'cancelled'));