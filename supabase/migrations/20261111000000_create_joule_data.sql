create table public.joule_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.joule_data enable row level security;

grant select, insert, update on table public.joule_data to authenticated;

create policy "Users can read their own Joule data"
on public.joule_data for select
to authenticated
using ((select auth.uid()) = user_id);

create policy "Users can create their own Joule data"
on public.joule_data for insert
to authenticated
with check ((select auth.uid()) = user_id);

create policy "Users can update their own Joule data"
on public.joule_data for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);
