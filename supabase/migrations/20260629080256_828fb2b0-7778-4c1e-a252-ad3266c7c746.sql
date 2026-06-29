DROP POLICY IF EXISTS "Anyone can submit a quote request" ON public.quote_requests;

CREATE POLICY "Public can submit valid quote requests"
ON public.quote_requests
FOR INSERT
TO anon, authenticated
WITH CHECK (
  length(btrim(name)) BETWEEN 2 AND 120
  AND length(btrim(email)) BETWEEN 5 AND 200
  AND email ~* '^[^@\s]+@[^@\s]+\.[^@\s]+$'
  AND length(btrim(phone)) BETWEEN 7 AND 30
  AND length(btrim(project_brief)) BETWEEN 10 AND 2000
  AND (company IS NULL OR length(company) <= 160)
);