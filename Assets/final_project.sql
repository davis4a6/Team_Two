--
-- PostgreSQL database dump
--

-- Dumped from database version 11.18
-- Dumped by pg_dump version 12.9

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

--
-- Name: EMPLOYEES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EMPLOYEES" (
    "ID" integer NOT NULL,
    "AGE" integer,
    "GENDER" character varying,
    "COUNTRY_WORKING_IN" character varying,
    "WFH" character varying
);


ALTER TABLE public."EMPLOYEES" OWNER TO postgres;

--
-- Name: MENTAL_HEALTH; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."MENTAL_HEALTH" (
    "ID" integer NOT NULL,
    "MENTAL_HEALTH_COVERAGE" character varying,
    "TECH_COMPANY" integer,
    "MENTAL_HEALTH_OPTIONS_UNDER_COVERAGE" character varying,
    "EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES" character varying,
    "MEDICAL_COVERAGE_INCLUDING_MENTAL_HEALTH_TREATMENT" integer,
    "PREV_EMPLOYERS_PROVIDE_MENTAL_HEALTH_BENEFITS" character varying,
    "AWARENESS_OF_MENTAL_HEALTH_COVERAGE_BY_PREV_EMPLOYERS" character varying,
    "PREV_EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES" character varying,
    "MENTAL_HEALTH_IDENTITY_HURT_YOUR_CAREER" character varying,
    "CURRENT_MENTAL_HEALTH_DISORDER" character varying
);


ALTER TABLE public."MENTAL_HEALTH" OWNER TO postgres;

--
-- Data for Name: EMPLOYEES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."EMPLOYEES" ("ID", "AGE", "GENDER", "COUNTRY_WORKING_IN", "WFH") FROM stdin;
0	39	Male	United Kingdom	Sometimes
1	29	male	United States of America	Never
2	38	Male 	United Kingdom	Always
3	43	male	United Kingdom	Sometimes
4	43	Female	United States of America	Sometimes
5	42	Male	United Kingdom	Sometimes
6	30	M	United States of America	Sometimes
7	37	female	United States of America	Always
8	44	Female	United States of America	Sometimes
9	30	Male	United States of America	Always
10	28	Male	United States of America	Never
11	34	Male	United States of America	Sometimes
12	30	Female	United States of America	Always
13	44	Male	Canada	Sometimes
14	35	Male	United States of America	Always
15	52	m	United States of America	Sometimes
16	32	I identify as female.	Canada	Always
17	34	Male	United Kingdom	Never
18	25	female 	United States of America	Always
19	31	M	United States of America	Sometimes
20	26	Male	United States of America	Sometimes
21	35	male	United States of America	Never
22	25	male	Germany	Sometimes
23	33	Male	Canada	Sometimes
24	38	Male	United States of America	Sometimes
25	42	male	Germany	Never
26	27	Male	Netherlands	Sometimes
27	35	male	Germany	Never
28	34	female	United Kingdom	Never
29	32	Bigender	United Kingdom	Never
30	32	non-binary	Germany	Never
31	30	Male	United States of America	Sometimes
32	31	Male	United States of America	Never
33	37	Male 	Czech Republic	Sometimes
34	36	Male	United Kingdom	Sometimes
35	33	Male	Germany	Never
36	44	Male	United States of America	Always
37	29	male	United Kingdom	Never
38	29	male	United Kingdom	Sometimes
39	44	Male	Canada	Always
40	34	Male	United States of America	Sometimes
41	40	male	United States of America	Always
42	46	Female assigned at birth 	Netherlands	Never
43	28	M	Lithuania	Sometimes
44	41	Male	United States of America	Never
45	33	male	United States of America	Sometimes
46	32	Male	United States of America	Sometimes
47	45	Male	United States of America	Sometimes
48	43	male	United Kingdom	Sometimes
49	37	F	United States of America	Always
50	37	M	Australia	Never
51	27	Male	United States of America	Sometimes
52	31	Male	Netherlands	Sometimes
53	36	Male	United States of America	Sometimes
54	34	Male	United States of America	Always
55	31	Woman	United States of America	Sometimes
56	30	Male	United States of America	Never
57	32	Male	Canada	Never
58	40	female	United States of America	Sometimes
59	40	Male	United States of America	Sometimes
60	41	man	France	Sometimes
61	27	Male	United Kingdom	Never
62	30	Male	United States of America	Sometimes
63	29	Male	Venezuela	Always
64	38	Male	United Kingdom	Sometimes
65	35	male	Netherlands	Sometimes
66	35	female	United States of America	Never
67	29	M	United States of America	Always
68	28	Male	United States of America	Never
69	27	Male	Netherlands	Sometimes
70	39	Male	Poland	Sometimes
71	28	male	Belgium	Sometimes
72	46	Male	United States of America	Sometimes
73	40	male	Netherlands	Sometimes
74	37	Male	United States of America	Always
75	41	Male	Netherlands	Sometimes
76	19	M	France	Never
77	38	F	Netherlands	Never
78	33	Male 	United States of America	Sometimes
79	33	Male	United States of America	Always
80	21	male	United Kingdom	Never
81	36	Male	Brazil	Never
82	39	Male	Canada	Sometimes
83	35	Male	United States of America	Sometimes
84	36	male	France	Sometimes
85	45	Male	United States of America	Never
86	41	Male	Canada	Never
87	35	Male	United Kingdom	Sometimes
88	30	Male	United States of America	Sometimes
89	24	Female	United States of America	Sometimes
90	33	Male	Brazil	Never
91	35	male	United States of America	Sometimes
92	26	Male	United Kingdom	Sometimes
93	17	male	Brazil	Always
94	29	Female	United States of America	Sometimes
95	26	Male	United States of America	Sometimes
96	36	female	United States of America	Always
97	46	M	United States of America	Sometimes
98	39	Male	Netherlands	Sometimes
99	28	Female	United States of America	Sometimes
100	40	Male	United States of America	Sometimes
101	23	Male	United States of America	Sometimes
102	30	Male	United States of America	Sometimes
103	28	fm	United States of America	Sometimes
104	27	Male	Netherlands	Never
105	31	m	United States of America	Always
106	39	f	United States of America	Never
107	34	Female	United States of America	Always
108	30	Male	United States of America	Sometimes
109	30	male	Denmark	Never
110	31	Male	United States of America	Sometimes
111	30	M	United States of America	Always
112	32	Male	United States of America	Sometimes
113	22	Male	Czech Republic	Sometimes
114	37	Female	Belgium	Always
115	51	Male	United States of America	Sometimes
116	26	Male	United States of America	Sometimes
117	41	f	United States of America	Sometimes
118	39	F	United States of America	Sometimes
119	43	M	United States of America	Sometimes
120	30	M	United Kingdom	Sometimes
121	24	Female	United States of America	Sometimes
122	30	m	Netherlands	Sometimes
123	28	Cis female 	Germany	Sometimes
124	48	Female	United States of America	Sometimes
125	55	Female	United States of America	Always
126	36	F	United States of America	Sometimes
127	38	Male	Netherlands	Sometimes
128	34	Male	France	Sometimes
129	44	Female	United States of America	Sometimes
130	45	Male	United States of America	Sometimes
131	45	M	United States of America	Sometimes
132	30	male	United States of America	Sometimes
133	34	Male	United States of America	Sometimes
134	37	Male	United States of America	Sometimes
135	38	Male	United States of America	Sometimes
136	31	Male	United States of America	Sometimes
137	33	Male	United States of America	Always
138	29	female	United States of America	Sometimes
139	35	M	United States of America	Sometimes
140	42	Transitioned, M2F	Canada	Always
141	26	Female	United States of America	Sometimes
142	36	f	United States of America	Always
143	21	male	United Kingdom	Never
144	34	F	United States of America	Sometimes
145	40	M	Germany	Always
146	35	Male	United States of America	Sometimes
147	44	Male	United States of America	Sometimes
148	35	Genderfluid (born female)	Canada	Sometimes
149	45	m	United States of America	Sometimes
150	42	m	United States of America	Sometimes
151	40	Male	United States of America	Always
152	50	F	United States of America	Always
153	36	Male	United States of America	Always
154	31	female	United States of America	Always
155	29	Male	United States of America	Always
156	37	Male	United States of America	Never
157	31	m	United States of America	Sometimes
158	42	Male	Canada	Always
159	25	Male	United States of America	Sometimes
160	27	Male	United States of America	Sometimes
161	41	Female	United States of America	Never
162	41	Female	United States of America	Sometimes
163	55	F	United States of America	Never
164	21	Male	United States of America	Never
165	37	male	Netherlands	Never
166	34	female	Netherlands	Sometimes
167	40	Male	United Kingdom	Never
168	25	male	Netherlands	Always
169	36	male	Germany	Sometimes
170	25	Male	Germany	Never
171	35	male	United States of America	Always
172	37	male	United States of America	Always
173	45	Male	United States of America	Sometimes
174	26	Male	United States of America	Never
175	23	Male	United States of America	Sometimes
176	22	Female	United States of America	Sometimes
177	46	Female	United States of America	Always
178	31	Male	United Kingdom	Sometimes
179	27	Male	United States of America	Always
180	37	male	United Kingdom	Sometimes
181	37	Male	United Kingdom	Never
182	26	Other/Transfeminine	Netherlands	Sometimes
183	23	M	Netherlands	Never
184	40	Male	United States of America	Never
185	29	M	Denmark	Sometimes
186	37	Male	United States of America	Sometimes
187	34	female	United States of America	Never
188	40	male	United States of America	Sometimes
189	39	Male	United States of America	Sometimes
190	28	Male	United States of America	Always
191	28	male	Belgium	Sometimes
192	27	Male	Germany	Sometimes
193	48	Male	United Kingdom	Sometimes
194	49	Female	United States of America	Sometimes
195	35	Male	United Kingdom	Never
196	35	Male	Sweden	Sometimes
197	38	Male	United Kingdom	Always
198	32	Male	United States of America	Sometimes
199	42	Male	United States of America	Sometimes
200	33	female	United States of America	Always
201	35	Male	United Kingdom	Always
202	24	M	Russia	Sometimes
203	29	Female or Multi-Gender Femme	United States of America	Sometimes
204	29	Male	United States of America	Always
205	24	Male	United Kingdom	Sometimes
206	30	Male	Sweden	Always
207	30	male	United States of America	Always
208	44	male	United States of America	Always
209	37	Male	United Kingdom	Always
210	28	Male	Germany	Sometimes
211	42	Male	United States of America	Always
212	30	female	United Kingdom	Sometimes
213	36	m	Russia	Sometimes
214	30	male	Russia	Sometimes
215	29	Male	United States of America	Always
216	25	male	United States of America	Sometimes
217	25	Male	Belgium	Sometimes
218	24	Male	Russia	Never
219	25	m	Russia	Sometimes
220	31	Male 	Denmark	Never
221	37	M	Canada	Sometimes
222	35	Male	United States of America	Never
223	26	female	Spain	Sometimes
224	31	Male	United Kingdom	Always
225	29	female	United States of America	Always
226	33	M	France	Sometimes
227	30	M	India	Always
228	30	M	United States of America	Sometimes
229	29	female	United States of America	Never
230	25	Female	United States of America	Sometimes
231	27	Male	United States of America	Never
232	26	Male	Germany	Sometimes
233	38	Female	United States of America	Always
234	49	Male	United States of America	Sometimes
235	30	Male	United States of America	Sometimes
236	34	male	France	Sometimes
237	31	male	Russia	Never
238	29	Male	United States of America	Sometimes
239	31	m	Germany	Sometimes
240	34	male	Germany	Never
241	28	Male	United States of America	Sometimes
242	35	Female 	United Kingdom	Always
243	27	Male 	Germany	Always
244	33	m	Germany	Sometimes
245	37	Female	United States of America	Sometimes
246	45	Male	United Kingdom	Sometimes
247	31	woman	United States of America	Always
248	36	M	United States of America	Never
249	30	M	United States of America	Never
250	33	female	United Arab Emirates	Sometimes
251	45	female	Canada	Always
252	30	Female	United States of America	Sometimes
253	30	male	United States of America	Sometimes
254	29	Male	United States of America	Always
255	36	Male	Mexico	Sometimes
256	28	Male	United States of America	Never
257	36	Male	United States of America	Sometimes
258	37	female	United States of America	Sometimes
259	29	Male	United States of America	Sometimes
260	25	Male	United States of America	Sometimes
261	34	f	United States of America	Sometimes
262	37	M	Canada	Sometimes
263	40	Female	United States of America	Sometimes
264	32	Male	United States of America	Always
265	38	Male	United Kingdom	Never
266	31	Female	United States of America	Sometimes
267	28	female	United States of America	Sometimes
268	27	female	United Kingdom	Sometimes
269	28	female	United States of America	Sometimes
270	26	Male	Germany	Always
271	40	Male	United States of America	Sometimes
272	42	Male	United States of America	Sometimes
273	36	Male	United States of America	Never
274	44	male	United Kingdom	Never
275	24	Male	United States of America	Never
276	44	Male	United States of America	Never
277	31	Male	United States of America	Always
278	49	m	United States of America	Sometimes
279	27	female/woman	United States of America	Sometimes
280	27	Cis male	United States of America	Always
281	28	Male	United States of America	Sometimes
282	20	Female	United States of America	Never
283	41	Male 	Germany	Always
284	38	Male	Australia	Sometimes
285	29	male	United States of America	Never
286	44	f	United States of America	Always
287	31	Male.	United States of America	Sometimes
288	54	m	United States of America	Sometimes
289	33	m	Germany	Sometimes
290	29	male	Netherlands	Never
291	26	Androgynous	United Kingdom	Sometimes
292	26	male	United Kingdom	Never
293	34	Male	United Kingdom	Sometimes
294	38	Female	United States of America	Sometimes
295	30	Male	United Kingdom	Sometimes
296	34	Male	United Kingdom	Sometimes
297	47	F	Australia	Sometimes
298	33	Female	Switzerland	Sometimes
299	22	Male	United Kingdom	Sometimes
300	28	male 9:1 female, roughly	United Kingdom	Never
301	31	m	United Kingdom	Always
302	24	\N	United Kingdom	Sometimes
303	56	m	Australia	Sometimes
304	57	F	Australia	Always
305	39	M	United States of America	Always
306	21	Male	United Kingdom	Never
307	31	female	Russia	Sometimes
308	63	Male	United States of America	Always
309	46	male	Australia	Always
310	32	Female	United Kingdom	Never
311	35	m	United Kingdom	Sometimes
312	34	Male	United Kingdom	Sometimes
313	35	male	United States of America	Always
314	31	Male	Norway	Sometimes
315	35	F	United States of America	Always
316	36	Male	United States of America	Sometimes
317	50	Male	United States of America	Sometimes
318	31	Male	United States of America	Sometimes
319	47	male	United States of America	Never
320	32	Female	Canada	Never
321	23	Female	Canada	Never
322	43	Female	Canada	Sometimes
323	26	Female	Canada	Sometimes
324	26	female	Canada	Never
325	55	Female	Canada	Sometimes
326	27	Male	Canada	Never
327	34	Male	Argentina	Always
328	25	Male	India	Never
329	35	male	United States of America	Sometimes
330	37	Male	Netherlands	Sometimes
331	38	Female	United States of America	Sometimes
332	29	male	Canada	Never
333	28	Male	United Kingdom	Always
334	29	Male	United States of America	Always
335	40	male	United States of America	Always
336	25	Female	United States of America	Sometimes
337	29	Male	Sweden	Sometimes
338	29	F	United States of America	Sometimes
339	35	M	Netherlands	Sometimes
340	25	Male	United States of America	Sometimes
341	43	Male	United States of America	Sometimes
342	26	Male	Ireland	Never
343	31	male	Germany	Never
344	31	female	United States of America	Always
345	45	F	United States of America	Always
346	23	Male	Italy	Never
347	39	Male	United States of America	Never
348	27	Female	United States of America	Sometimes
349	28	Male	United States of America	Sometimes
350	36	Male	United States of America	Always
351	22	male	Germany	Never
352	51	Male	United States of America	Never
353	39	Male	Denmark	Sometimes
354	36	Male	United States of America	Sometimes
355	28	male	United States of America	Sometimes
356	40	M	United States of America	Always
357	35	Female	United States of America	Sometimes
358	38	Male	United States of America	Never
359	29	Male	United States of America	Always
360	43	M	Netherlands	Sometimes
361	31	f	United States of America	Always
362	45	male	United States of America	Sometimes
363	26	Male	United States of America	Sometimes
364	42	Male	United States of America	Always
365	28	f	United States of America	Always
366	28	Male	United Kingdom	Sometimes
367	39	female	United States of America	Sometimes
368	34	Male (cis)	United States of America	Sometimes
369	28	Female	United States of America	Always
370	35	Female	United States of America	Sometimes
371	42	male	Canada	Sometimes
372	99	Other	United States of America	Sometimes
373	29	Male	United Kingdom	Always
374	34	Male 	Finland	Sometimes
375	28	Male	Canada	Always
376	22	F	Russia	Sometimes
377	28	female	United States of America	Sometimes
378	26	Female	United States of America	Always
379	21	Female 	Australia	Never
380	38	male	Netherlands	Never
381	33	M	United States of America	Sometimes
382	28	Female	United States of America	Sometimes
383	32	Male	United States of America	Sometimes
384	24	Female	Australia	Sometimes
385	35	male	United States of America	Always
386	41	Male	Turkey	Sometimes
387	38	F	United States of America	Always
388	24	Female	United States of America	Sometimes
389	30	Male	United States of America	Sometimes
390	47	female	United States of America	Sometimes
391	26	female	United States of America	Never
392	32	Male	United States of America	Always
393	32	Male	United States of America	Sometimes
394	37	male	United States of America	Always
395	33	male	Netherlands	Sometimes
396	28	f	United Kingdom	Sometimes
397	22	man	Netherlands	Never
398	30	Male	United States of America	Sometimes
399	42	Female	United States of America	Always
400	34	male	United States of America	Never
401	32	Male	United States of America	Sometimes
402	37	male	United Kingdom	Always
403	31	Female	United States of America	Always
404	31	Male	United States of America	Always
405	26	male	Colombia	Always
406	30	Male	United States of America	Sometimes
407	36	m	United States of America	Sometimes
408	38	Male	United States of America	Always
409	24	Male	United States of America	Sometimes
410	26	male	United States of America	Sometimes
411	37	Male	United States of America	Never
412	27	Female	United Kingdom	Never
413	32	Male	Switzerland	Always
414	32	Male	Netherlands	Never
415	30	Male	Netherlands	Never
416	26	Female	Germany	Always
417	27	Female	United Kingdom	Never
418	27	Male	Netherlands	Always
419	29	Male	Colombia	Always
420	26	nb masculine	Germany	Never
421	23	Female	United States of America	Never
422	30	Male	United States of America	Sometimes
423	40	M	United States of America	Sometimes
424	46	male	United States of America	Sometimes
425	26	Male	United States of America	Sometimes
426	30	m	United States of America	Sometimes
427	27	f	United States of America	Always
428	35	male	United States of America	Always
429	26	Cisgender Female	United States of America	Sometimes
430	35	Male	Australia	Always
431	29	Male	Netherlands	Never
432	34	Male	United Kingdom	Sometimes
433	27	male	United States of America	Sometimes
434	39	Male	United Kingdom	Sometimes
435	27	Male	United Kingdom	Sometimes
436	31	Male	Czech Republic	Sometimes
437	26	Male	United Kingdom	Never
438	44	male	United States of America	Always
439	27	male	United States of America	Sometimes
440	57	Female	United States of America	Sometimes
441	34	m	United States of America	Sometimes
442	38	Male	United States of America	Sometimes
443	55	Male	United States of America	Always
444	28	male	Costa Rica	Sometimes
445	35	Male	United States of America	Never
446	26	Male	United States of America	Always
447	22	female	United States of America	Never
448	31	Male	United States of America	Sometimes
449	31	male	United Kingdom	Never
450	40	Male	Germany	Sometimes
451	26	m	United States of America	Sometimes
452	36	M	United States of America	Sometimes
453	33	Male	United States of America	Sometimes
454	24	F	United States of America	Sometimes
455	22	male	Vietnam	Sometimes
456	33	male	United States of America	Always
457	37	f	United States of America	Sometimes
458	29	Male	United States of America	Always
459	38	Male	United States of America	Sometimes
460	33	m	United States of America	Sometimes
461	44	Female	Canada	Always
462	23	Male	United States of America	Sometimes
463	30	M	United States of America	Sometimes
464	30	Man	United States of America	Never
465	28	male	United States of America	Sometimes
466	39	male	United States of America	Never
467	24	Female	United States of America	Never
468	27	Male	United Kingdom	Always
469	35	Male	United States of America	Sometimes
470	23	Male	United States of America	Never
471	37	M	United States of America	Sometimes
472	35	Male	United States of America	Sometimes
473	27	Male	United States of America	Sometimes
474	27	Female	United States of America	Always
475	27	Female	United States of America	Never
476	42	m	United States of America	Sometimes
477	32	Sex is male	United States of America	Never
478	26	Male	Finland	Sometimes
479	28	Male	Bulgaria	Never
480	28	M	United States of America	Sometimes
481	32	Male	United States of America	Sometimes
482	43	male	United States of America	Always
483	34	Male	United States of America	Never
484	61	f	United States of America	Sometimes
485	50	Male	United States of America	Always
486	38	Male	India	Sometimes
487	51	m	Germany	Sometimes
488	38	male	Ireland	Sometimes
489	34	male	United States of America	Always
490	43	Male	United States of America	Always
491	43	Female	United States of America	Sometimes
492	44	Male	United States of America	Always
493	35	m	United States of America	Sometimes
494	50	Male	United States of America	Always
495	29	Male	United States of America	Sometimes
496	29	Male	United States of America	Never
497	36	Male	Canada	Sometimes
498	33	Male	Australia	Sometimes
499	50	Male	Australia	Sometimes
500	46	Male	United States of America	Always
501	44	Female	New Zealand	Always
502	23	none of your business	United States of America	Sometimes
503	41	Male	United States of America	Sometimes
504	31	male	Canada	Sometimes
505	55	male	United States of America	Sometimes
506	34	M	United States of America	Sometimes
507	28	Female	United States of America	Always
508	33	m	United States of America	Sometimes
509	29	Male	United States of America	Sometimes
510	33	Female	United States of America	Sometimes
511	28	male	United States of America	Sometimes
512	28	male	United States of America	Sometimes
513	32	Male	United States of America	Sometimes
514	36	female	United States of America	Never
515	45	Male	United Kingdom	Sometimes
516	29	M	United Kingdom	Always
517	23	Male	France	Never
518	54	Female	Canada	Always
519	61	F	United States of America	Sometimes
520	29	Female	United States of America	Sometimes
521	31	Male	Australia	Sometimes
522	37	M	United States of America	Always
523	29	Male	Germany	Never
524	28	Male	United Kingdom	Always
525	30	Male	United Kingdom	Sometimes
526	55	Male	United Kingdom	Always
527	38	Female	United States of America	Never
528	20	male	Canada	Sometimes
529	25	Male	United States of America	Sometimes
530	22	Male	Spain	Always
531	35	Male	United Kingdom	Sometimes
532	27	male	United States of America	Never
533	24	Male	United States of America	Sometimes
534	39	Male	Australia	Always
535	29	Male	Brazil	Never
536	40	Female	United States of America	Never
537	30	Male	United States of America	Always
538	32	Male	Canada	Sometimes
539	34	m	Germany	Sometimes
540	35	F	Canada	Sometimes
541	30	Male	United States of America	Sometimes
542	36	Male	United Kingdom	Never
543	26	male	Sweden	Sometimes
544	31	Female	Netherlands	Never
545	33	Male	South Africa	Never
546	30	Male	United Kingdom	Sometimes
547	46	m	United Kingdom	Always
548	32	Male	United States of America	Sometimes
549	34	male	United States of America	Sometimes
550	41	male	United States of America	Always
551	32	Male	United States of America	Always
552	47	Male	United States of America	Sometimes
553	29	male	United States of America	Always
554	36	male	United States of America	Sometimes
555	32	Male	United States of America	Sometimes
556	29	Male	United States of America	Sometimes
557	22	Male	United Kingdom	Never
558	32	female	United States of America	Sometimes
559	19	Female	United States of America	Never
560	30	Male	South Africa	Sometimes
561	32	genderqueer	United States of America	Always
562	22	M	United States of America	Sometimes
563	30	male	Poland	Always
564	323	Male	United States of America	Sometimes
565	33	male	Slovakia	Sometimes
566	48	f	United Kingdom	Never
567	45	male	Germany	Never
568	28	Male	United Kingdom	Sometimes
569	44	male	United States of America	Sometimes
570	31	Male	United States of America	Sometimes
571	31	f	United States of America	Sometimes
572	29	Male	United States of America	Never
573	26	Male	United States of America	Never
574	35	f	United States of America	Sometimes
575	44	m	Austria	Sometimes
576	45	male	United States of America	Always
577	22	Female	United States of America	Sometimes
578	34	Male	United States of America	Sometimes
579	35	Male	United Kingdom	Never
580	39	Male	United States of America	Sometimes
581	26	Male	Denmark	Never
582	41	Male	United States of America	Sometimes
583	24	Male	Australia	Sometimes
584	24	Male	United States of America	Never
585	34	male	United States of America	Sometimes
586	36	Male	Australia	Sometimes
587	41	Male	Australia	Sometimes
588	21	Male	United States of America	Never
589	33	Male	Bangladesh	Sometimes
590	32	Male	India	Always
591	62	Female	United States of America	Never
592	37	M	United States of America	Sometimes
593	32	male	United States of America	Always
594	31	Male	United States of America	Sometimes
595	28	Male	United States of America	Sometimes
596	48	Female	United States of America	Always
597	40	male	United States of America	Sometimes
598	29	Male	Norway	Never
599	33	M	Germany	Never
600	27	Male	Finland	Sometimes
601	24	m	Australia	Sometimes
602	28	Male	Netherlands	Sometimes
603	42	Male	United States of America	Always
604	28	m	United Kingdom	Sometimes
605	40	Male	Canada	Always
606	32	Female	United States of America	Always
607	33	Male	United States of America	Always
608	40	m	United States of America	Always
609	26	Male	United States of America	Never
610	39	Female	United States of America	Sometimes
611	38	Male	United Kingdom	Never
612	34	Male	United States of America	Sometimes
613	44	Male	Netherlands	Never
614	54	Male	United Kingdom	Always
615	24	male	Pakistan	Always
616	31	Male	United States of America	Sometimes
617	47	cis male	United States of America	Sometimes
618	30	Male	Australia	Sometimes
619	34	M	United States of America	Always
620	29	Human	United States of America	Sometimes
621	27	Male	United States of America	Sometimes
622	29	male	United States of America	Never
623	43	Female	United States of America	Sometimes
624	31	Genderfluid	United States of America	Sometimes
625	27	Male	Norway	Never
626	29	M	United Kingdom	Never
627	29	Male	United Kingdom	Never
628	42	Male	United States of America	Sometimes
629	26	Female	United States of America	Always
630	26	male	Switzerland	Sometimes
631	34	Male	United Kingdom	Sometimes
632	24	Male	United States of America	Sometimes
633	25	male	United States of America	Never
634	22	M	United States of America	Sometimes
635	33	male	United States of America	Sometimes
636	53	m	United States of America	Always
637	32	M	Canada	Never
638	32	male	United States of America	Sometimes
639	55	m	United States of America	Sometimes
640	27	male	France	Never
641	34	Male	United Kingdom	Always
642	26	Male	United States of America	Sometimes
643	25	\N	United States of America	Never
644	39	Male	United Kingdom	Sometimes
645	32	male	United States of America	Never
646	46	Male	United Kingdom	Sometimes
647	52	F	United States of America	Sometimes
648	33	Enby	United Kingdom	Never
649	58	Male	United States of America	Sometimes
650	30	male	Canada	Never
651	46	Malr	Sweden	Sometimes
652	45	male	United States of America	Sometimes
653	26	f	Canada	Sometimes
654	22	Male	United States of America	Never
655	21	Male	United States of America	Sometimes
656	3	Male	Canada	Sometimes
657	34	m	United States of America	Sometimes
658	25	female	United States of America	Sometimes
659	27	Male	United States of America	Sometimes
660	25	Female 	United States of America	Never
661	33	Male	United Kingdom	Sometimes
662	26	Female	Canada	Always
663	36	Female	United States of America	Always
664	26	Male	United Kingdom	Never
665	34	Male	United States of America	Never
666	34	Male	United States of America	Sometimes
667	25	Male	United States of America	Sometimes
668	33	Female	United States of America	Sometimes
669	27	f	Canada	Sometimes
670	24	Female	Canada	Never
671	47	female	United States of America	Sometimes
672	37	Male	United States of America	Sometimes
673	35	genderqueer woman	United States of America	Sometimes
674	30	Male	United States of America	Always
675	42	male	United States of America	Never
676	36	Female	United States of America	Sometimes
677	31	male	United States of America	Always
678	28	female	United States of America	Always
679	36	Female	United States of America	Sometimes
680	36	Female	United States of America	Never
681	32	m	Canada	Sometimes
682	42	male	United States of America	Always
683	41	Female	United States of America	Never
684	36	Male	Sweden	Sometimes
685	23	Male	United States of America	Sometimes
686	54	Female	United States of America	Never
687	34	female	United States of America	Never
688	36	m	Netherlands	Never
689	27	male	United States of America	Never
690	32	male	United States of America	Always
691	21	Male	Germany	Never
692	44	m	United States of America	Always
693	33	m	United States of America	Always
694	38	M	United Kingdom	Sometimes
695	38	Male	Ireland	Sometimes
696	38	female	United States of America	Always
697	22	Female	Brazil	Always
698	33	mtf	United States of America	Sometimes
699	27	f	Canada	Never
700	55	female	United States of America	Sometimes
701	66	male	United States of America	Sometimes
702	25	Male	United States of America	Sometimes
703	22	Male	Netherlands	Never
704	29	male	Brazil	Sometimes
705	33	Male	New Zealand	Never
706	27	Male	Sweden	Never
707	44	male	United States of America	Sometimes
708	38	Male	Bulgaria	Sometimes
709	32	M	United States of America	Always
710	59	female	United States of America	Never
711	43	man	Sweden	Sometimes
712	55	female	Germany	Always
713	32	Male	United States of America	Always
714	41	male	United Kingdom	Never
715	38	f	United States of America	Always
716	46	Male	United States of America	Sometimes
717	43	Male	United Kingdom	Never
718	29	Female	United States of America	Always
719	42	male	United States of America	Always
720	25	female 	United States of America	Never
721	49	Male	Afghanistan	Never
722	36	Male	United States of America	Always
723	30	Male	United Kingdom	Always
724	28	Male	United States of America	Sometimes
725	37	m	United States of America	Sometimes
726	23	female	United States of America	Sometimes
727	37	Male	United Kingdom	Sometimes
728	42	m	Netherlands	Always
729	32	male	United States of America	Never
730	28	Male	Canada	Always
731	28	M	United Kingdom	Never
732	29	Male	United States of America	Never
733	35	Male	United States of America	Always
734	31	Female	United States of America	Sometimes
735	46	Female	United States of America	Never
736	19	male	United States of America	Sometimes
737	35	Male	Sweden	Always
738	31	Male	United Kingdom	Sometimes
739	31	Male	United States of America	Sometimes
740	37	m	Canada	Always
741	34	Female	United States of America	Sometimes
742	39	Woman	United States of America	Sometimes
743	29	Female	United States of America	Always
744	29	female	United States of America	Always
745	63	Male	United States of America	Sometimes
746	45	male	Australia	Never
747	35	m	Greece	Always
748	32	Male	United Kingdom	Always
749	44	Male	United States of America	Always
750	28	Queer	United Kingdom	Never
751	39	male	Ireland	Sometimes
752	55	female	United States of America	Sometimes
753	33	female	United States of America	Sometimes
754	19	Male	India	Always
755	40	Male	United States of America	Always
756	49	F	United States of America	Sometimes
757	27	Female	Australia	Sometimes
758	39	male	United States of America	Never
759	35	Male	United Kingdom	Never
760	35	M	United States of America	Sometimes
761	42	female	United States of America	Sometimes
762	35	Male	Canada	Sometimes
763	31	female	United States of America	Sometimes
764	44	Male 	United Kingdom	Always
765	39	Male	United States of America	Sometimes
766	32	Male	Canada	Always
767	45	m	New Zealand	Sometimes
768	31	m	United States of America	Sometimes
769	47	Female	United States of America	Sometimes
770	29	M	United States of America	Sometimes
771	20	Male	United States of America	Always
772	34	m	United States of America	Never
773	33	Agender	United Kingdom	Never
774	56	female	United States of America	Always
775	35	Male	Canada	Sometimes
776	31	m	United States of America	Sometimes
777	36	Male	United States of America	Sometimes
778	30	Male	United States of America	Always
779	44	F	United States of America	Never
780	23	Female	United States of America	Sometimes
781	46	Male	United States of America	Never
782	33	female	United States of America	Always
783	32	female	United States of America	Never
784	45	Male	Other	Sometimes
785	26	male	United States of America	Sometimes
786	32	Woman	United States of America	Always
787	28	Dude	United States of America	Sometimes
788	44	M	United States of America	Sometimes
789	42	Male	United Kingdom	Always
790	30	Male	United States of America	Sometimes
791	28	F	United States of America	Sometimes
792	31	M	Canada	Always
793	29	male	United States of America	Sometimes
794	33	Male	United States of America	Sometimes
795	43	female	United States of America	Always
796	28	Male	Australia	Always
797	42	Fluid	United States of America	Always
798	38	Male	United States of America	Always
799	30	Male	United States of America	Sometimes
800	51	female	United States of America	Sometimes
801	48	F	United States of America	Never
802	39	Male	New Zealand	Always
803	28	Male	Australia	Sometimes
804	37	Male	United States of America	Always
805	33	Male	United States of America	Sometimes
806	21	Male	Australia	Never
807	25	male	United States of America	Sometimes
808	15	male	Canada	Sometimes
809	40	Male	United States of America	Always
810	30	Female	Canada	Sometimes
811	27	Male	Romania	Always
812	25	male	India	Never
813	38	Male	Germany	Sometimes
814	24	Male	United Kingdom	Never
815	23	Male	United Kingdom	Never
816	39	Female	United Kingdom	Always
817	26	male	United States of America	Sometimes
818	43	Male	United Kingdom	Never
819	30	Male	New Zealand	Always
820	35	Male	Germany	Always
821	40	M	United Kingdom	Sometimes
822	33	Female	United Kingdom	Never
823	35	male	Brunei	Sometimes
824	22	Male	United Kingdom	Never
825	28	Male	United States of America	Always
826	39	M	United States of America	Sometimes
827	33	M	United States of America	Always
828	25	Female	United Kingdom	Always
829	37	Male	United States of America	Sometimes
830	41	f	France	Never
831	30	Female	United States of America	Sometimes
832	42	Male	United States of America	Sometimes
833	52	Male	United States of America	Sometimes
834	30	male	United States of America	Always
835	35	Male	United States of America	Sometimes
836	24	Male	United States of America	Sometimes
837	39	Male	United States of America	Sometimes
838	34	Male	United States of America	Sometimes
839	32	Male	United States of America	Always
840	25	I'm a man why didn't you make this a drop down question. You should of asked sex? And I would of answered yes please. Seriously how much text can this take? 	United Kingdom	Sometimes
841	43	Male	Poland	Never
842	39	male	United States of America	Sometimes
843	35	Male	United States of America	Always
844	34	Male	United States of America	Sometimes
845	38	Male	United Kingdom	Sometimes
846	26	woman	United States of America	Always
847	24	male	Bulgaria	Sometimes
848	27	Female	United States of America	Sometimes
849	25	male	United States of America	Never
850	37	m	United States of America	Sometimes
851	33	Male	Canada	Sometimes
852	34	Male	United States of America	Sometimes
853	27	Male	Canada	Sometimes
854	33	Male	United States of America	Sometimes
855	50	mail	United States of America	Sometimes
856	54	female	United States of America	Sometimes
857	32	female 	Canada	Sometimes
858	39	m	Canada	Sometimes
859	36	Male	United States of America	Sometimes
860	34	Male	Canada	Sometimes
861	31	female	United States of America	Sometimes
862	36	male	United States of America	Never
863	48	Male	United States of America	Sometimes
864	31	male	United States of America	Never
865	32	M	United States of America	Always
866	32	M	United States of America	Always
867	31	male	United States of America	Always
868	28	Female	United States of America	Sometimes
869	28	male	United Kingdom	Never
870	33	F	United States of America	Sometimes
871	33	M	United States of America	Never
872	59	M	United States of America	Always
873	33	male	United States of America	Sometimes
874	37	Male	United States of America	Always
875	27	female	Germany	Always
876	39	Male	United States of America	Always
877	50	M	Germany	Sometimes
878	34	Female	United States of America	Never
879	50	male	Germany	Sometimes
880	31	Female	Other	Always
881	39	male	United States of America	Sometimes
882	46	Male	United States of America	Sometimes
883	28	M	United States of America	Sometimes
884	32	male	France	Sometimes
885	65	F	United States of America	Sometimes
886	37	Male	United States of America	Always
887	41	Female	United States of America	Sometimes
888	38	Male	United States of America	Sometimes
889	51	male	United States of America	Sometimes
890	29	Male	United States of America	Sometimes
891	37	Male	Canada	Always
892	31	Male	Canada	Always
893	32	Male	Iran	Sometimes
894	31	male	Sweden	Sometimes
895	52	m	Switzerland	Never
896	31	male	Switzerland	Sometimes
897	38	F	United Kingdom	Always
898	35	Male	United States of America	Never
899	29	Male	United States of America	Always
900	63	Male	United States of America	Always
901	47	female	United States of America	Always
902	43	M	Austria	Always
903	38	male	Ireland	Sometimes
904	27	Male	United States of America	Never
905	40	Female	United States of America	Always
906	32	Male	South Africa	Never
907	43	female	United States of America	Always
908	28	female	Germany	Never
909	46	Male	United Kingdom	Always
910	42	male	United States of America	Sometimes
911	31	Male	United States of America	Sometimes
912	37	F	United States of America	Never
913	35	M	Canada	Never
914	30	Female	United States of America	Always
915	35	Male	Australia	Sometimes
916	24	Male	United States of America	Never
917	23	male	India	Sometimes
918	39	Female	United Kingdom	Always
919	38	Male	France	Always
920	28	Male	United Kingdom	Always
921	30	m	United Kingdom	Sometimes
922	38	Male	United Kingdom	Always
923	33	M	France	Sometimes
924	35	Male	United Kingdom	Sometimes
925	54	M|	United Kingdom	Never
926	30	female	Germany	Never
927	32	Female	United Kingdom	Always
928	28	male	United States of America	Sometimes
929	39	m	Germany	Sometimes
930	21	non-binary	United States of America	Always
931	31	male	Germany	Sometimes
932	30	male	United States of America	Sometimes
933	25	Female	United States of America	Sometimes
934	26	Male	United Kingdom	Always
935	30	male	United States of America	Never
936	30	M	Italy	Never
937	31	Male	Bulgaria	Always
938	32	M	United States of America	Never
939	45	female	United Kingdom	Always
940	29	Male	Switzerland	Sometimes
941	27	Male	United States of America	Always
942	28	Female	United Kingdom	Always
943	38	m	United States of America	Always
944	38	male	United States of America	Sometimes
945	34	Male	Hungary	Sometimes
946	36	M	Netherlands	Sometimes
947	23	male	France	Sometimes
948	40	Female	United States of America	Sometimes
949	39	Male	United States of America	Always
950	28	Male	United States of America	Never
951	33	male	United States of America	Sometimes
952	32	Male 	United States of America	Always
953	32	Male	United States of America	Never
954	27	M	United States of America	Never
955	33	Male	Israel	Never
956	34	Male	Japan	Never
957	38	f	India	Sometimes
958	35	M	United States of America	Never
959	39	M	United States of America	Sometimes
960	35	male	United States of America	Never
961	34	Male	United States of America	Sometimes
962	44	Female	United States of America	Always
963	42	M	United States of America	Always
964	30	Male	United States of America	Always
965	55	Male	United States of America	Never
966	46	m	United States of America	Sometimes
967	33	male	United States of America	Sometimes
968	30	Male	United States of America	Sometimes
969	30	male	United Kingdom	Sometimes
970	31	Female	United States of America	Never
971	38	Male	Ireland	Sometimes
972	30	female	United Kingdom	Sometimes
973	32	Male	United States of America	Sometimes
974	32	Male	United Kingdom	Never
975	47	Male	United States of America	Sometimes
976	39	Male	United Kingdom	Always
977	35	Male	United States of America	Sometimes
978	36	Male	United States of America	Sometimes
979	38	female	United States of America	Always
980	30	Male	United States of America	Sometimes
981	33	Male	United States of America	Sometimes
982	22	male	United States of America	Never
983	35	m	United States of America	Always
984	26	m	United States of America	Never
985	34	Male	United States of America	Always
986	40	male	United States of America	Sometimes
987	37	male	Bulgaria	Always
988	43	M	Switzerland	Sometimes
989	20	Male	United States of America	Sometimes
990	30	Female	United States of America	Sometimes
991	32	Male	United States of America	Sometimes
992	35	male	United States of America	Always
993	29	male	United States of America	Sometimes
994	29	male	United States of America	Never
995	30	m	United States of America	Always
996	30	male	United States of America	Never
997	38	Male	United States of America	Always
998	30	Male	Brazil	Never
999	26	Male	Netherlands	Never
1000	27	Male	Germany	Always
1001	24	Male	United States of America	Always
1002	35	male	United States of America	Never
1003	38	Male	Sweden	Sometimes
1004	36	Male/genderqueer	United States of America	Sometimes
1005	34	Male	United Kingdom	Always
1006	35	Male	United States of America	Sometimes
1007	25	Male	United States of America	Sometimes
1008	32	Female	Sweden	Never
1009	32	fem	United States of America	Never
1010	37	male	United States of America	Sometimes
1011	28	Male	Germany	Sometimes
1012	34	Female	United Kingdom	Sometimes
1013	40	Female	United States of America	Never
1014	45	Male	United States of America	Never
1015	31	Male	Sweden	Sometimes
1016	30	male	United States of America	Sometimes
1017	47	female	United Kingdom	Sometimes
1018	48	m	United Kingdom	Sometimes
1019	44	Male	United States of America	Sometimes
1020	29	Male	United States of America	Never
1021	52	m	United States of America	Always
1022	34	Female	Sweden	Sometimes
1023	34	male	Netherlands	Never
1024	27	Male	United States of America	Sometimes
1025	30	Male	Russia	Sometimes
1026	40	Male	United Kingdom	Sometimes
1027	26	Male	United States of America	Always
1028	36	Male	United Kingdom	Never
1029	35	Male	United Kingdom	Always
1030	43	Female	United Kingdom	Never
1031	36	Female	United Kingdom	Sometimes
1032	32	Female	United States of America	Sometimes
1033	36	Female	Ireland	Always
1034	38	Male	New Zealand	Never
1035	35	Male	United States of America	Always
1036	35	F	Australia	Sometimes
1037	45	m	United States of America	Always
1038	47	male	New Zealand	Always
1039	27	male	United States of America	Sometimes
1040	26	Male	United States of America	Sometimes
1041	51	Male	Australia	Always
1042	25	Male	Ecuador	Sometimes
1043	41	male	South Africa	Sometimes
1044	34	Male	United States of America	Sometimes
1045	43	Male	Sweden	Never
1046	33	Male	United Kingdom	Never
1047	37	m	Australia	Sometimes
1048	27	Female	United Kingdom	Never
1049	54	F	United States of America	Sometimes
1050	38	m	Italy	Never
1051	42	male	Germany	Sometimes
1052	30	Male	United Kingdom	Sometimes
1053	43	M	Australia	Sometimes
1054	33	Male	Netherlands	Never
1055	37	Female	Australia	Always
1056	25	male	United States of America	Sometimes
1057	27	Male	Australia	Sometimes
1058	27	Male	Canada	Sometimes
1059	27	Male	United States of America	Never
1060	35	M	Germany	Sometimes
1061	24	male	United Kingdom	Never
1062	31	Nonbinary	Switzerland	Never
1063	31	male 	Germany	Sometimes
1064	32	male	United States of America	Sometimes
1065	33	Male	Australia	Sometimes
1066	56	M	United States of America	Sometimes
1067	43	Male	United States of America	Sometimes
1068	49	Male	Australia	Sometimes
1069	35	male	Bulgaria	Sometimes
1070	53	Male	Canada	Sometimes
1071	45	m	United States of America	Never
1072	40	Male	United States of America	Sometimes
1073	52	Male	United States of America	Sometimes
1074	30	Male	United Kingdom	Always
1075	41	Male	New Zealand	Always
1076	31	male	Netherlands	Always
1077	31	Male	Switzerland	Sometimes
1078	24	human	United States of America	Sometimes
1079	44	Male	Australia	Sometimes
1080	37	m	United States of America	Sometimes
1081	22	Male	Brazil	Always
1082	31	Female	United States of America	Sometimes
1083	36	female	Bulgaria	Sometimes
1084	28	Male	Romania	Always
1085	25	female	United States of America	Sometimes
1086	49	male	United States of America	Always
1087	22	woman	United States of America	Always
1088	43	male	United States of America	Sometimes
1089	33	m	United States of America	Never
1090	36	Female (props for making this a freeform field, though)	United States of America	Sometimes
1091	26	female	United States of America	Sometimes
1092	43	Male	United States of America	Sometimes
1093	21	male	United States of America	Sometimes
1094	39	Male	Australia	Sometimes
1095	46	Male	United Kingdom	Sometimes
1096	32	M	United Kingdom	Sometimes
1097	31	Male	United Kingdom	Sometimes
1098	39	female	United Kingdom	Sometimes
1099	44	m	Sweden	Sometimes
1100	36	male	United States of America	Never
1101	31	female	United Kingdom	Never
1102	30	Nonbinary	United States of America	Sometimes
1103	36	male	United States of America	Sometimes
1104	31	m	United States of America	Sometimes
1105	23	male	Canada	Never
1106	23	M	Canada	Always
1107	30	Female 	United States of America	Always
1108	34	male	Canada	Always
1109	49	Female	United States of America	Sometimes
1110	25	m	Bosnia and Herzegovina	Never
1111	39	Male	United Kingdom	Sometimes
1112	37	male	Germany	Never
1113	26	Male	United States of America	Sometimes
1114	41	Male	United States of America	Sometimes
1115	28	Male	Netherlands	Never
1116	33	Male	Sweden	Sometimes
1117	74	 Female	United States of America	Sometimes
1118	28	Male	Netherlands	Sometimes
1119	47	Male	United States of America	Sometimes
1120	25	male	Bosnia and Herzegovina	Never
1121	51	M	United States of America	Never
1122	26	male	United States of America	Never
1123	24	Male	United States of America	Never
1124	33	F	United States of America	Always
1125	32	Female 	United States of America	Sometimes
1126	57	male	United States of America	Always
1127	39	Male	United States of America	Never
1128	26	Female	United States of America	Sometimes
1129	38	Male	United States of America	Sometimes
1130	33	Male	Finland	Sometimes
1131	30	Male	United States of America	Sometimes
1132	25	Female 	United States of America	Sometimes
1133	40	Male	United States of America	Sometimes
1134	26	Female	United States of America	Sometimes
1135	34	Male	United States of America	Never
1136	46	F	United States of America	Sometimes
1137	31	female	United States of America	Sometimes
1138	42	male	Ireland	Never
1139	30	Male	United States of America	Sometimes
1140	26	Unicorn	United States of America	Always
1141	29	male	Austria	Never
1142	31	M	United States of America	Never
1143	40	Male	United States of America	Always
1144	39	Cis Male	United States of America	Always
1145	37	male	United States of America	Sometimes
1146	27	Male	United States of America	Always
1147	45	m	United States of America	Always
1148	29	M	United States of America	Sometimes
1149	47	female	United States of America	Sometimes
1150	33	male	United States of America	Always
1151	32	Male	United States of America	Always
1152	29	Male	United States of America	Sometimes
1153	36	Male	United States of America	Sometimes
1154	35	F	United States of America	Never
1155	40	Male	United States of America	Always
1156	36	male	United States of America	Always
1157	39	Female	United States of America	Sometimes
1158	38	Male	United States of America	Always
1159	23	Male	United States of America	Sometimes
1160	29	male	United States of America	Sometimes
1161	38	Male	United States of America	Always
1162	34	Female	United States of America	Sometimes
1163	28	male	Brazil	Never
1164	38	Male	New Zealand	Sometimes
1165	25	female	United States of America	Never
1166	36	female	United States of America	Sometimes
1167	57	Female	United States of America	Sometimes
1168	46	male	Ireland	Sometimes
1169	49	Male	United States of America	Never
1170	34	m	United States of America	Never
1171	43	Male	United Kingdom	Sometimes
1172	35	m	Ireland	Sometimes
1173	32	Male	United States of America	Always
1174	24	Male (trans, FtM)	Sweden	Sometimes
1175	33	Male	United States of America	Sometimes
1176	28	Male	Finland	Never
1177	48	Male	Germany	Sometimes
1178	33	female	United States of America	Always
1179	40	male	United States of America	Never
1180	22	Male	United States of America	Sometimes
1181	22	female	United States of America	Never
1182	23	Female	United States of America	Sometimes
1183	33	male	Germany	Never
1184	29	Male	Netherlands	Never
1185	32	Male	United States of America	Always
1186	43	m	United States of America	Sometimes
1187	49	Male	United States of America	Sometimes
1188	44	Male	Sweden	Always
1189	29	Male	United States of America	Always
1190	27	male	Canada	Never
1191	30	Male	United States of America	Never
1192	43	F	United States of America	Sometimes
1193	30	Female 	United States of America	Sometimes
1194	33	Female	United States of America	Sometimes
1195	27	Female	United States of America	Sometimes
1196	26	female	United States of America	Never
1197	47	m	Ireland	Sometimes
1198	30	Male	United States of America	Never
1199	39	Male	United States of America	Never
1200	36	male	United States of America	Never
1201	34	male	United Kingdom	Always
1202	25	female	United States of America	Never
1203	28	Male	Finland	Sometimes
1204	38	Male	United States of America	Sometimes
1205	39	Male	United States of America	Always
1206	32	Male	United States of America	Never
1207	27	female	United States of America	Never
1208	31	female	United States of America	Sometimes
1209	30	female	United Kingdom	Never
1210	34	m	United Kingdom	Sometimes
1211	26	Male	United States of America	Always
1212	27	Female	United Kingdom	Always
1213	29	Male	United States of America	Never
1214	37	Female	Canada	Always
1215	49	F	United States of America	Always
1216	39	Male	United States of America	Sometimes
1217	42	m	China	Sometimes
1218	28	Male	United States of America	Sometimes
1219	33	Male	United States of America	Always
1220	30	female	United Kingdom	Sometimes
1221	70	Male	United States of America	Always
1222	25	Male	Germany	Sometimes
1223	45	Male	United Kingdom	Sometimes
1224	63	F	United States of America	Never
1225	40	male	United States of America	Always
1226	39	male	United States of America	Sometimes
1227	31	Cis-woman	United States of America	Always
1228	34	male	United States of America	Never
1229	44	Male	United Kingdom	Sometimes
1230	45	m	Ireland	Always
1231	43	Male	United States of America	Sometimes
1232	29	male	United States of America	Always
1233	27	Genderqueer	United States of America	Always
1234	37	Male	United States of America	Always
1235	41	non-binary	United States of America	Always
1236	30	woman	United States of America	Sometimes
1237	28	male	United States of America	Sometimes
1238	28	Male	United States of America	Sometimes
1239	39	Male	Switzerland	Sometimes
1240	22	male	United Kingdom	Sometimes
1241	31	M	United States of America	Sometimes
1242	29	Male	United Kingdom	Never
1243	33	male	Israel	Never
1244	37	male	Germany	Sometimes
1245	42	Male	United States of America	Always
1246	31	male	United Kingdom	Never
1247	34	male	United States of America	Always
1248	49	F	United States of America	Always
1249	29	male	Canada	Never
1250	40	cisdude	United States of America	Sometimes
1251	46	Female	Netherlands	Sometimes
1252	31	female	United States of America	Always
1253	43	Male	Denmark	Sometimes
1254	45	male	Germany	Sometimes
1255	32	M	United Kingdom	Sometimes
1256	38	male	United States of America	Sometimes
1257	40	Male	Netherlands	Sometimes
1258	38	Male	Germany	Never
1259	32	Male	United Kingdom	Never
1260	37	male	Mexico	Sometimes
1261	24	male	Sweden	Sometimes
1262	25	Female	United States of America	Always
1263	24	Male	United States of America	Sometimes
1264	34	Female	United States of America	Sometimes
1265	55	male	United States of America	Always
1266	32	Male 	United States of America	Sometimes
1267	29	male	Romania	Never
1268	20	Male	United States of America	Sometimes
1269	41	male	United States of America	Sometimes
1270	33	female	United States of America	Sometimes
1271	25	male	United States of America	Sometimes
1272	29	male	United Kingdom	Sometimes
1273	24	Genderflux demi-girl	United States of America	Sometimes
1274	39	Male	United States of America	Sometimes
1275	39	Male	United Kingdom	Sometimes
1276	44	Man	United Kingdom	Sometimes
1277	30	female	Netherlands	Sometimes
1278	31	male	Denmark	Sometimes
1279	37	Male	United Kingdom	Always
1280	42	Male	United Kingdom	Sometimes
1281	35	Male	Canada	Always
1282	30	M	United States of America	Never
1283	30	male	Canada	Always
1284	33	Male	United States of America	Sometimes
1285	31	Male	United States of America	Never
1286	39	Female	United States of America	Sometimes
1287	27	m	Germany	Never
1288	34	male	United Kingdom	Sometimes
1289	31	Male	United States of America	Sometimes
1290	30	Female	United States of America	Always
1291	34	male	United States of America	Sometimes
1292	20	female-bodied; no feelings about gender	Canada	Never
1293	39	Male	United States of America	Never
1294	50	female	United States of America	Sometimes
1295	22	Male	United States of America	Never
1296	41	Male	Spain	Sometimes
1297	37	male	Germany	Sometimes
1298	32	m	United States of America	Sometimes
1299	26	M	Austria	Always
1300	38	M	Netherlands	Never
1301	21	Male	United Kingdom	Always
1302	27	Male	United States of America	Sometimes
1303	37	f	United States of America	Sometimes
1304	45	male	United Kingdom	Always
1305	26	Male	United States of America	Sometimes
1306	30	Female	United States of America	Sometimes
1307	21	Male	United States of America	Sometimes
1308	21	male	United States of America	Sometimes
1309	29	male	Germany	Sometimes
1310	46	male	United States of America	Sometimes
1311	28	cis man	United States of America	Sometimes
1312	26	\N	United States of America	Never
1313	37	Female	United States of America	Always
1314	44	Male	United States of America	Sometimes
1315	45	F	United States of America	Always
1316	35	female	United States of America	Always
1317	39	Male	United States of America	Never
1318	37	Female	United States of America	Sometimes
1319	35	Male	United States of America	Sometimes
1320	29	Female	United States of America	Never
1321	49	f	United States of America	Never
1322	21	Male (cis)	United States of America	Sometimes
1323	26	Female	United States of America	Sometimes
1324	35	male	Germany	Never
1325	56	M	United States of America	Sometimes
1326	53	female	United States of America	Always
1327	48	f	United States of America	Sometimes
1328	24	male	United Kingdom	Never
1329	37	Male	Ireland	Never
1330	27	female	United States of America	Never
1331	39	female	United States of America	Sometimes
1332	31	male	Finland	Sometimes
1333	34	Male	United States of America	Always
1334	33	Male	United Kingdom	Sometimes
1335	22	Male	United Kingdom	Never
1336	25	Female	United Kingdom	Sometimes
1337	34	Male	United Kingdom	Never
1338	30	male	United Kingdom	Sometimes
1339	37	male	United Kingdom	Never
1340	26	Male	Chile	Never
1341	29	female	United States of America	Never
1342	29	male	Chile	Sometimes
1343	27	Male	United Kingdom	Never
1344	27	female	Chile	Sometimes
1345	23	Male	United States of America	Sometimes
1346	24	female	United States of America	Sometimes
1347	22	male	Guatemala	Sometimes
1348	28	Male	United Kingdom	Never
1349	22	Male	United States of America	Never
1350	32	Male	United States of America	Sometimes
1351	35	female	United States of America	Always
1352	26	Male	United States of America	Sometimes
1353	31	female	United Kingdom	Sometimes
1354	32	male	United States of America	Sometimes
1355	37	Male	Pakistan	Sometimes
1356	24	Male	United Kingdom	Never
1357	33	Male	United States of America	Always
1358	28	Male	United States of America	Sometimes
1359	22	Female	United States of America	Sometimes
1360	46	Male	Germany	Sometimes
1361	30	Male	United States of America	Always
1362	29	Male	United States of America	Never
1363	22	Male	United States of America	Sometimes
1364	24	Female	United States of America	Sometimes
1365	29	Female	United States of America	Always
1366	30	male	United States of America	Sometimes
1367	25	Male 	United States of America	Always
1368	39	Male	United States of America	Sometimes
1369	31	male	Serbia	Always
1370	25	Male	United States of America	Sometimes
1371	39	Male	United States of America	Sometimes
1372	31	F	United States of America	Always
1373	35	m	United States of America	Sometimes
1374	31	AFAB	United States of America	Always
1375	23	male	United States of America	Sometimes
1376	30	male	United States of America	Never
1377	28	male	France	Sometimes
1378	23	Female	Ireland	Never
1379	26	Female 	United States of America	Never
1380	24	Female	United States of America	Never
1381	32	Male	United States of America	Never
1382	35	Male	United States of America	Always
1383	30	Male	Estonia	Sometimes
1384	32	male	United States of America	Sometimes
1385	35	Male	United States of America	Never
1386	26	F	United States of America	Always
1387	30	Female	United States of America	Sometimes
1388	29	male	United States of America	Never
1389	39	male	Canada	Always
1390	37	Male	United Kingdom	Never
1391	35	M	United States of America	Sometimes
1392	25	Female	United States of America	Sometimes
1393	22	Agender	United States of America	Never
1394	33	Male	United Kingdom	Never
1395	23	male 	United States of America	Sometimes
1396	29	male	Brazil	Sometimes
1397	28	Male	United States of America	Always
1398	30	Male	United States of America	Never
1399	28	Male	United States of America	Sometimes
1400	28	female	United States of America	Always
1401	37	male	United States of America	Never
1402	30	Male	United States of America	Sometimes
1403	27	Male	India	Sometimes
1404	29	Male	Canada	Sometimes
1405	28	Male	Poland	Never
1406	26	Transgender woman	Ireland	Sometimes
1407	29	male	United States of America	Sometimes
1408	34	m	Germany	Sometimes
1409	36	Male	United Kingdom	Always
1410	38	Male	Belgium	Never
1411	22	Female	United States of America	Sometimes
1412	24	male	United States of America	Sometimes
1413	24	female	United States of America	Sometimes
1414	36	female	United States of America	Never
1415	24	Female	United States of America	Never
1416	24	Male	United States of America	Never
1417	31	Male	Netherlands	Never
1418	39	M	United Kingdom	Never
1419	41	male	United States of America	Sometimes
1420	29	Male	United Kingdom	Always
1421	37	male	Estonia	Never
1422	30	male	United States of America	Always
1423	24	Male	Canada	Sometimes
1424	22	female	Canada	Sometimes
1425	24	Male	Canada	Sometimes
1426	26	Female	Canada	Sometimes
1427	38	female	United States of America	Always
1428	34	Female 	United States of America	Sometimes
1429	56	MALE	Afghanistan	Sometimes
1430	52	Male	United States of America	Sometimes
1431	30	Female	United States of America	Sometimes
1432	25	non-binary	Canada	Sometimes
\.


--
-- Data for Name: MENTAL_HEALTH; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."MENTAL_HEALTH" ("ID", "MENTAL_HEALTH_COVERAGE", "TECH_COMPANY", "MENTAL_HEALTH_OPTIONS_UNDER_COVERAGE", "EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES", "MEDICAL_COVERAGE_INCLUDING_MENTAL_HEALTH_TREATMENT", "PREV_EMPLOYERS_PROVIDE_MENTAL_HEALTH_BENEFITS", "AWARENESS_OF_MENTAL_HEALTH_COVERAGE_BY_PREV_EMPLOYERS", "PREV_EMPLOYER_OFFER_MENTAL_HEALTH_RESOURCES", "MENTAL_HEALTH_IDENTITY_HURT_YOUR_CAREER", "CURRENT_MENTAL_HEALTH_DISORDER") FROM stdin;
0	Not eligible for coverage 	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
1	No	1	Yes	Yes	\N	Yes, they all did	I was aware of some	Some did	No, I don't think it would	Yes
2	No	1	\N	No	\N	No, none did	N/A (not currently aware)	Some did	Maybe	No
3	\N	\N	\N	\N	1	Some did	N/A (not currently aware)	None did	Yes, I think it would	Yes
4	Yes	0	Yes	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
5	Yes	1	I am not sure	Yes	\N	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
6	I don't know	1	No	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
7	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
8	I don't know	0	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
9	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Maybe	Yes
10	Yes	1	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Yes
11	Yes	0	Yes	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
12	Yes	1	I am not sure	No	\N	Some did	Yes, I was aware of all of them	Some did	No, it has not	Yes
13	Yes	0	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
14	Yes	1	Yes	I don't know	\N	I don't know	No, I only became aware later	None did	No, it has not	Yes
15	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Yes
16	Not eligible for coverage 	1	No	No	\N	No, none did	No, I only became aware later	None did	Yes, it has	Yes
17	No	1	No	No	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	No
18	\N	\N	\N	\N	1	\N	\N	\N	Yes, it has	Yes
19	I don't know	0	No	No	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	Yes
20	No	1	\N	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	No
21	Yes	0	No	I don't know	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	No
22	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Maybe	No
23	Yes	1	Yes	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
24	\N	\N	\N	\N	1	I don't know	No, I only became aware later	None did	Maybe	No
25	Yes	0	Yes	Yes	\N	\N	\N	\N	Maybe	No
26	No	0	No	No	\N	No, none did	I was aware of some	None did	Yes, I think it would	Yes
27	I don't know	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
28	I don't know	0	No	Yes	\N	I don't know	No, I only became aware later	None did	Yes, I think it would	Maybe
29	Not eligible for coverage 	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
30	Not eligible for coverage 	1	Yes	No	\N	\N	\N	\N	Yes, I think it would	Yes
31	Yes	1	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	No, I don't think it would	Yes
32	I don't know	1	I am not sure	No	\N	\N	\N	\N	Maybe	Maybe
33	\N	\N	\N	\N	0	Some did	No, I only became aware later	None did	Maybe	No
34	Yes	1	I am not sure	I don't know	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Yes
35	No	1	No	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
36	Yes	1	I am not sure	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
37	No	1	Yes	No	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	Maybe
38	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
39	Yes	1	Yes	I don't know	\N	Some did	No, I only became aware later	Some did	Maybe	No
40	\N	\N	\N	\N	1	Yes, they all did	No, I only became aware later	Some did	Yes, I think it would	Yes
41	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	No, I don't think it would	Yes
42	Yes	1	I am not sure	No	\N	Some did	No, I only became aware later	Some did	Maybe	Yes
43	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
44	No	0	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
45	Yes	1	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
46	\N	\N	\N	\N	1	Some did	I was aware of some	Some did	No, I don't think it would	Yes
47	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Maybe
48	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Maybe
49	Yes	1	Yes	No	\N	Some did	Yes, I was aware of all of them	Yes, they all did	Maybe	Yes
50	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
51	Yes	1	Yes	No	\N	Some did	I was aware of some	Some did	Maybe	No
52	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	None did	Maybe	No
53	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Maybe	Yes
54	Yes	0	Yes	No	\N	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Maybe
55	Yes	0	No	Yes	\N	Some did	N/A (not currently aware)	Some did	Maybe	No
56	Yes	1	Yes	Yes	\N	\N	\N	\N	Maybe	Maybe
57	Yes	0	Yes	I don't know	\N	Some did	No, I only became aware later	Some did	Yes, I think it would	Maybe
58	Yes	0	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Maybe
59	I don't know	0	No	No	\N	No, none did	I was aware of some	None did	Maybe	No
60	Yes	1	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
61	Not eligible for coverage 	0	\N	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
62	Yes	1	Yes	No	\N	Some did	No, I only became aware later	None did	Maybe	No
63	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
517	No	0	No	Yes	\N	\N	\N	\N	Maybe	No
64	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	Some did	Maybe	No
65	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
66	No	0	Yes	No	\N	No, none did	I was aware of some	None did	Yes, I think it would	Yes
67	Yes	1	I am not sure	Yes	\N	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
68	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	None did	Yes, I think it would	No
69	No	0	Yes	I don't know	\N	No, none did	N/A (not currently aware)	Yes, they all did	Maybe	Maybe
70	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Maybe	No
71	Yes	1	I am not sure	I don't know	\N	\N	\N	\N	Maybe	No
72	I don't know	0	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
73	No	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
74	Yes	1	Yes	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
75	No	1	\N	No	\N	Some did	N/A (not currently aware)	None did	Maybe	No
76	\N	\N	\N	\N	0	\N	\N	\N	No, I don't think it would	Yes
77	I don't know	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	Some did	Maybe	No
78	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Maybe	No
79	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
80	Yes	1	Yes	I don't know	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
81	No	1	No	No	\N	Some did	I was aware of some	None did	Maybe	Yes
82	\N	\N	\N	\N	0	No, none did	I was aware of some	None did	Maybe	Yes
83	I don't know	1	I am not sure	I don't know	\N	\N	\N	\N	No, I don't think it would	No
84	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	None did	Maybe	Yes
85	Yes	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
86	I don't know	1	No	No	\N	I don't know	I was aware of some	Some did	Yes, I think it would	Maybe
87	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, it has	Yes
88	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Maybe
89	I don't know	1	I am not sure	Yes	\N	\N	\N	\N	No, I don't think it would	Yes
90	No	0	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
91	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	Maybe
92	No	1	\N	I don't know	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
93	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
94	I don't know	0	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
95	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	None did	No, I don't think it would	Yes
96	I don't know	1	I am not sure	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	No
97	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
98	\N	\N	\N	\N	1	Some did	I was aware of some	Some did	Yes, I think it would	Yes
99	Yes	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
100	Yes	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
101	I don't know	1	No	No	\N	\N	\N	\N	Yes, I think it would	Yes
102	I don't know	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
103	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
104	No	1	I am not sure	No	\N	\N	\N	\N	Maybe	Maybe
105	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
106	Yes	1	Yes	No	\N	Some did	I was aware of some	None did	Maybe	Maybe
107	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Maybe	Yes
108	Yes	1	Yes	No	\N	\N	\N	\N	Yes, I think it would	Yes
109	\N	\N	\N	\N	1	No, none did	Yes, I was aware of all of them	None did	No, I don't think it would	Yes
110	I don't know	0	No	I don't know	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
111	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	None did	Maybe	Yes
112	Yes	1	I am not sure	I don't know	\N	\N	\N	\N	Yes, I think it would	Maybe
113	\N	\N	\N	\N	1	\N	\N	\N	Yes, it has	No
114	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
115	Yes	0	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
116	I don't know	0	No	No	\N	No, none did	N/A (not currently aware)	None did	No, it has not	Yes
117	Yes	1	Yes	Yes	\N	Some did	N/A (not currently aware)	Some did	Maybe	No
118	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
119	Yes	1	No	No	\N	Yes, they all did	I was aware of some	None did	Yes, I think it would	Maybe
120	I don't know	1	I am not sure	No	\N	Some did	I was aware of some	Some did	Maybe	Maybe
121	Yes	1	Yes	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
122	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	None did	Maybe	Yes
123	No	0	Yes	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
124	\N	\N	\N	\N	0	Some did	I was aware of some	None did	Yes, I think it would	Yes
125	\N	\N	\N	\N	1	Some did	I was aware of some	Some did	Maybe	Maybe
126	I don't know	0	No	No	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Maybe	Maybe
127	\N	\N	\N	\N	0	Some did	I was aware of some	None did	Maybe	No
128	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
129	Yes	1	No	No	\N	I don't know	No, I only became aware later	None did	Yes, I think it would	No
130	I don't know	0	I am not sure	I don't know	\N	Yes, they all did	I was aware of some	None did	Maybe	Maybe
131	Yes	1	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
132	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
133	Yes	0	No	Yes	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
134	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
135	Yes	0	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
136	Yes	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
137	I don't know	1	I am not sure	I don't know	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	No
138	Yes	1	Yes	I don't know	\N	Yes, they all did	I was aware of some	Some did	Maybe	Yes
139	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
140	No	1	Yes	No	\N	Some did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
141	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
142	Yes	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
143	I don't know	1	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	Yes
144	Yes	1	I am not sure	No	\N	Some did	N/A (not currently aware)	Some did	Yes, I think it would	Yes
145	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
146	Yes	1	No	No	\N	Some did	I was aware of some	None did	Yes, it has	Yes
147	Yes	1	Yes	I don't know	\N	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	No
148	I don't know	1	No	I don't know	\N	Some did	I was aware of some	None did	No, I don't think it would	No
149	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
150	Yes	0	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	No, I don't think it would	Yes
151	\N	\N	\N	\N	1	Some did	I was aware of some	Some did	Yes, it has	Yes
152	\N	\N	\N	\N	0	\N	\N	\N	Yes, I think it would	No
153	Yes	1	No	I don't know	\N	I don't know	I was aware of some	Some did	Maybe	Maybe
154	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	None did	Maybe	Yes
155	I don't know	1	No	No	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	No
156	Yes	1	No	I don't know	\N	\N	\N	\N	Yes, I think it would	No
157	No	1	I am not sure	I don't know	\N	Some did	No, I only became aware later	None did	Yes, it has	Yes
158	I don't know	0	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
159	Yes	1	Yes	I don't know	\N	Some did	No, I only became aware later	None did	Yes, I think it would	No
160	Yes	1	Yes	Yes	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	Yes
161	Yes	0	Yes	I don't know	\N	Some did	I was aware of some	None did	Yes, I think it would	Yes
162	Yes	1	Yes	Yes	\N	\N	\N	\N	Yes, I think it would	Yes
163	Yes	0	Yes	Yes	\N	\N	\N	\N	Yes, I think it would	No
164	Yes	1	Yes	Yes	\N	No, none did	I was aware of some	None did	Yes, I think it would	Yes
165	I don't know	0	I am not sure	No	\N	Yes, they all did	I was aware of some	None did	Yes, I think it would	No
166	I don't know	0	No	I don't know	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
167	Yes	0	Yes	Yes	\N	I don't know	N/A (not currently aware)	Some did	Maybe	Maybe
168	\N	\N	\N	\N	1	\N	\N	\N	Maybe	Maybe
169	Yes	0	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	Maybe
170	No	1	I am not sure	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
171	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
172	No	1	I am not sure	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
173	Yes	0	No	Yes	\N	Some did	No, I only became aware later	Some did	Yes, I think it would	Maybe
174	No	1	\N	No	\N	No, none did	I was aware of some	None did	Yes, it has	Yes
175	Yes	1	I am not sure	I don't know	\N	\N	\N	\N	Yes, I think it would	No
176	Yes	1	Yes	No	\N	Some did	No, I only became aware later	None did	Yes, I think it would	Yes
177	I don't know	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
178	No	1	\N	No	\N	No, none did	No, I only became aware later	None did	Maybe	No
179	Yes	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, it has not	Yes
180	No	1	\N	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
181	I don't know	1	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	No
182	Not eligible for coverage 	1	\N	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
183	No	1	No	No	\N	Yes, they all did	I was aware of some	None did	Maybe	No
184	Yes	1	Yes	No	\N	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
185	No	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
186	Yes	1	Yes	Yes	\N	I don't know	N/A (not currently aware)	Yes, they all did	No, I don't think it would	Yes
187	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	No
188	Yes	1	No	I don't know	\N	Some did	I was aware of some	None did	No, I don't think it would	Yes
189	Yes	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
190	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	Some did	Maybe	Yes
191	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
192	No	1	No	No	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	No
193	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
194	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Maybe	Yes
195	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
196	I don't know	1	No	No	\N	No, none did	No, I only became aware later	None did	Maybe	Yes
197	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	Yes
198	Yes	1	Yes	Yes	\N	Yes, they all did	I was aware of some	Some did	Maybe	No
199	Yes	1	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
200	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
201	I don't know	1	\N	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
202	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
203	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Maybe	Yes
204	I don't know	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
205	Not eligible for coverage	1	\N	No	\N	\N	\N	\N	No, I don't think it would	No
206	I don't know	1	No	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
207	I don't know	1	No	No	\N	Some did	I was aware of some	None did	No, I don't think it would	Yes
208	No	1	No	No	\N	Some did	I was aware of some	Some did	Maybe	Yes
209	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
210	No	1	No	No	\N	Some did	I was aware of some	None did	Yes, I think it would	No
211	Yes	1	Yes	I don't know	\N	Yes, they all did	I was aware of some	Some did	No, I don't think it would	No
212	Yes	1	No	No	\N	Some did	I was aware of some	Some did	Yes, it has	Yes
213	I don't know	1	I am not sure	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
214	I don't know	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	No
215	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
216	I don't know	1	No	I don't know	\N	\N	\N	\N	Maybe	No
217	No	1	\N	No	\N	\N	\N	\N	Maybe	No
218	I don't know	1	I am not sure	I don't know	\N	\N	\N	\N	Maybe	No
219	No	1	No	No	\N	\N	\N	\N	Yes, it has	Yes
220	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	No, it has not	Yes
221	Yes	1	No	No	\N	Yes, they all did	I was aware of some	Yes, they all did	Maybe	No
222	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
223	Not eligible for coverage 	1	\N	No	\N	No, none did	I was aware of some	None did	Yes, it has	No
224	Yes	1	Yes	No	\N	No, none did	No, I only became aware later	None did	Maybe	No
225	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
226	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
227	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
228	Yes	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
229	Yes	1	Yes	Yes	\N	\N	\N	\N	Yes, I think it would	Yes
230	I don't know	1	No	Yes	\N	\N	\N	\N	Yes, I think it would	Yes
231	Yes	0	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
232	Yes	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	No
233	Yes	1	Yes	I don't know	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	No
234	Yes	1	Yes	Yes	\N	Some did	I was aware of some	None did	Yes, I think it would	Yes
235	Yes	1	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	No
236	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
237	No	1	No	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
238	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
239	No	1	No	No	\N	\N	\N	\N	Maybe	No
240	Not eligible for coverage 	1	I am not sure	No	\N	No, none did	No, I only became aware later	None did	Yes, I think it would	Maybe
241	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
242	\N	\N	\N	\N	1	Yes, they all did	N/A (not currently aware)	None did	Yes, I think it would	No
243	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
244	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	No
245	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Maybe
246	Not eligible for coverage 	1	\N	Yes	\N	I don't know	N/A (not currently aware)	Some did	Yes, it has	Yes
247	No	1	\N	No	\N	Some did	I was aware of some	None did	No, it has not	Yes
248	No	0	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
249	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
250	Yes	1	Yes	Yes	\N	Some did	I was aware of some	None did	Yes, I think it would	Yes
251	Yes	1	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
252	Yes	1	Yes	Yes	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	Yes
253	Yes	1	Yes	No	\N	Yes, they all did	I was aware of some	None did	Yes, it has	Yes
254	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Maybe	Yes
255	No	0	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
256	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Maybe
257	Yes	1	I am not sure	I don't know	\N	Some did	No, I only became aware later	None did	Maybe	Yes
258	Yes	1	Yes	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
259	Yes	1	I am not sure	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Some did	No, I don't think it would	Maybe
260	Yes	1	Yes	Yes	\N	Some did	No, I only became aware later	Some did	No, I don't think it would	Yes
261	Yes	1	No	Yes	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	No
262	Yes	0	Yes	Yes	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	No
263	Yes	1	Yes	Yes	\N	Yes, they all did	I was aware of some	None did	Maybe	Yes
264	Yes	1	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
265	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
266	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Yes
267	Yes	1	Yes	Yes	\N	Some did	No, I only became aware later	Some did	Maybe	No
268	No	1	No	No	\N	Some did	I was aware of some	Some did	Yes, it has	Yes
269	Yes	1	Yes	Yes	\N	Some did	I was aware of some	None did	Maybe	Yes
270	I don't know	1	Yes	No	\N	Some did	Yes, I was aware of all of them	None did	Maybe	Yes
271	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	No
272	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
273	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
274	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
275	Yes	1	Yes	No	\N	\N	\N	\N	Maybe	Yes
276	I don't know	0	I am not sure	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	Maybe
277	Yes	1	I am not sure	I don't know	\N	Some did	Yes, I was aware of all of them	Some did	No, I don't think it would	Yes
278	\N	\N	\N	\N	0	No, none did	No, I only became aware later	None did	Yes, it has	Maybe
279	Yes	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
280	Yes	1	I am not sure	Yes	\N	Some did	I was aware of some	None did	Yes, I think it would	No
281	Yes	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	No
282	Yes	1	Yes	No	\N	No, none did	Yes, I was aware of all of them	None did	Yes, it has	Maybe
283	\N	\N	\N	\N	1	Yes, they all did	N/A (not currently aware)	None did	Maybe	No
284	No	0	\N	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
285	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Yes
286	Yes	1	No	No	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, it has	Yes
287	I don't know	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	Yes, they all did	Maybe	No
288	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
289	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
290	No	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
291	I don't know	1	I am not sure	I don't know	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
292	I don't know	1	No	I don't know	\N	\N	\N	\N	Maybe	Maybe
293	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
294	I don't know	1	No	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
295	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Yes
296	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
297	Yes	1	I am not sure	No	\N	Some did	I was aware of some	Yes, they all did	Maybe	Yes
298	Yes	0	I am not sure	Yes	\N	No, none did	I was aware of some	None did	Maybe	No
299	I don't know	0	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
300	Not eligible for coverage 	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
301	Yes	1	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
302	Not eligible for coverage 	0	\N	No	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Yes
303	No	0	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	No
304	\N	\N	\N	\N	1	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
305	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
306	No	1	No	No	\N	Some did	N/A (not currently aware)	None did	Yes, I think it would	No
307	I don't know	1	No	I don't know	\N	No, none did	No, I only became aware later	None did	Yes, I think it would	No
308	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
309	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
310	I don't know	1	No	Yes	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
311	\N	\N	\N	\N	0	No, none did	No, I only became aware later	None did	Yes, it has	Yes
312	Yes	1	I am not sure	No	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Maybe	No
313	Not eligible for coverage 	1	\N	No	\N	Yes, they all did	N/A (not currently aware)	None did	Maybe	Yes
314	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	Some did	Maybe	No
315	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
316	I don't know	0	No	No	\N	I don't know	No, I only became aware later	Some did	Maybe	No
317	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	None did	Yes, I think it would	No
318	I don't know	1	I am not sure	No	\N	\N	\N	\N	Maybe	Yes
319	Yes	1	Yes	No	\N	Some did	I was aware of some	Some did	Maybe	No
320	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
321	Yes	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
322	Yes	1	I am not sure	I don't know	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	Yes
323	Yes	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
324	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
325	Yes	1	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	Yes, I think it would	No
326	Yes	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
327	Not eligible for coverage 	1	No	I don't know	\N	No, none did	No, I only became aware later	None did	Yes, I think it would	No
328	No	1	\N	No	\N	\N	\N	\N	Yes, I think it would	No
329	I don't know	0	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
330	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	Yes
331	Yes	1	I am not sure	Yes	\N	Yes, they all did	I was aware of some	None did	Maybe	Yes
332	Yes	1	No	No	\N	Yes, they all did	No, I only became aware later	Some did	Yes, I think it would	Maybe
333	Yes	1	Yes	Yes	\N	\N	\N	\N	Maybe	Maybe
334	Not eligible for coverage 	1	\N	No	\N	I don't know	N/A (not currently aware)	Some did	Maybe	Maybe
335	Yes	1	I am not sure	No	\N	Some did	I was aware of some	Some did	No, I don't think it would	Maybe
336	Yes	1	Yes	Yes	\N	\N	\N	\N	No, it has not	Yes
337	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	None did	No, I don't think it would	Maybe
338	Yes	1	Yes	Yes	\N	Some did	N/A (not currently aware)	None did	Maybe	Yes
339	Yes	1	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	No, it has not	Yes
340	\N	\N	\N	\N	1	\N	\N	\N	Yes, I think it would	No
341	No	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
342	No	1	\N	No	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
343	I don't know	1	No	No	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Maybe
344	Yes	1	Yes	Yes	\N	Some did	Yes, I was aware of all of them	None did	Maybe	No
345	I don't know	0	No	No	\N	No, none did	No, I only became aware later	None did	Yes, it has	Yes
346	No	1	No	No	\N	\N	\N	\N	Yes, I think it would	Maybe
347	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	Some did	Maybe	No
348	Yes	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
349	Yes	1	I am not sure	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Maybe	Yes
350	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
351	I don't know	1	No	No	\N	\N	\N	\N	Yes, I think it would	No
352	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Yes, it has	No
353	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
354	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Maybe	Yes
355	Not eligible for coverage 	0	I am not sure	No	\N	Yes, they all did	I was aware of some	Some did	Maybe	Yes
356	I don't know	1	No	Yes	\N	Yes, they all did	No, I only became aware later	Some did	Yes, I think it would	No
357	Yes	1	Yes	Yes	\N	Yes, they all did	I was aware of some	None did	Maybe	Yes
358	Yes	1	Yes	No	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	Yes
359	Yes	1	I am not sure	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
360	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Yes, I think it would	No
361	Yes	1	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
362	No	1	No	No	\N	Some did	Yes, I was aware of all of them	Some did	Yes, I think it would	No
363	I don't know	1	I am not sure	I don't know	\N	No, none did	N/A (not currently aware)	None did	No, it has not	Maybe
364	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Maybe	No
365	Yes	1	I am not sure	Yes	\N	Some did	No, I only became aware later	None did	Maybe	No
366	Not eligible for coverage 	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
367	Yes	1	No	Yes	\N	Yes, they all did	I was aware of some	Some did	Maybe	Yes
368	Yes	1	I am not sure	No	\N	Some did	I was aware of some	None did	No, it has not	No
369	I don't know	1	No	Yes	\N	Some did	I was aware of some	None did	Maybe	Yes
370	Yes	1	Yes	I don't know	\N	No, none did	N/A (not currently aware)	Some did	Yes, I think it would	No
371	I don't know	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
372	Yes	1	No	I don't know	\N	Some did	N/A (not currently aware)	None did	Maybe	Yes
373	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	Some did	No, I don't think it would	Maybe
374	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	Yes
375	Yes	1	I am not sure	I don't know	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	No
376	I don't know	1	No	No	\N	\N	\N	\N	Maybe	No
377	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, it has	Yes
378	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	Yes
379	Yes	0	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	Some did	No, I don't think it would	Maybe
380	No	1	No	No	\N	Some did	I was aware of some	None did	Yes, it has	Yes
381	Yes	0	Yes	Yes	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
382	Yes	1	I am not sure	Yes	\N	Some did	No, I only became aware later	Some did	Yes, I think it would	Yes
383	Yes	1	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
384	Not eligible for coverage 	1	\N	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
385	I don't know	1	I am not sure	I don't know	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
386	\N	\N	\N	\N	0	Some did	I was aware of some	None did	Yes, I think it would	No
387	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	No
388	I don't know	1	I am not sure	I don't know	\N	No, none did	N/A (not currently aware)	Some did	Yes, I think it would	Yes
389	Yes	1	Yes	I don't know	\N	Yes, they all did	I was aware of some	Yes, they all did	No, it has not	Yes
390	Yes	1	Yes	Yes	\N	Yes, they all did	I was aware of some	Yes, they all did	Yes, I think it would	No
391	Yes	1	I am not sure	Yes	\N	\N	\N	\N	Yes, I think it would	No
392	Yes	1	Yes	I don't know	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	Yes
393	I don't know	1	No	Yes	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
394	I don't know	1	No	Yes	\N	Some did	I was aware of some	Some did	No, it has not	Yes
395	\N	\N	\N	\N	1	Some did	N/A (not currently aware)	None did	Maybe	No
396	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
397	I don't know	1	No	I don't know	\N	\N	\N	\N	Maybe	No
398	I don't know	1	I am not sure	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
399	\N	\N	\N	\N	1	Some did	I was aware of some	Some did	No, it has not	No
400	Yes	1	I am not sure	I don't know	\N	Some did	N/A (not currently aware)	None did	Yes, I think it would	No
401	Yes	1	Yes	No	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	Maybe
402	No	1	No	No	\N	No, none did	I was aware of some	None did	Yes, it has	Yes
403	\N	\N	\N	\N	0	Some did	I was aware of some	None did	Yes, I think it would	No
404	I don't know	1	No	No	\N	No, none did	No, I only became aware later	None did	Yes, I think it would	Yes
405	No	0	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	No
406	\N	\N	\N	\N	0	Some did	No, I only became aware later	Some did	Maybe	Maybe
407	Yes	1	Yes	I don't know	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	Yes
408	Yes	1	No	No	\N	Some did	I was aware of some	None did	Yes, I think it would	No
409	Yes	1	Yes	No	\N	\N	\N	\N	Maybe	Yes
410	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	Some did	Maybe	Yes
411	Yes	1	I am not sure	I don't know	\N	Yes, they all did	I was aware of some	None did	Yes, I think it would	Maybe
412	I don't know	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
413	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	No
414	Yes	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
415	Yes	0	I am not sure	Yes	\N	\N	\N	\N	No, I don't think it would	Yes
416	No	1	No	No	\N	Some did	No, I only became aware later	None did	Yes, I think it would	Yes
417	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Yes
418	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
419	Not eligible for coverage 	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
420	Yes	1	Yes	Yes	\N	Some did	No, I only became aware later	None did	Yes, I think it would	Yes
421	Yes	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
422	Yes	1	Yes	Yes	\N	Some did	I was aware of some	None did	No, I don't think it would	No
423	Yes	0	No	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
424	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
425	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
426	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	No
427	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
428	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
429	Yes	1	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
430	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
431	I don't know	0	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
432	I don't know	1	\N	Yes	\N	Some did	No, I only became aware later	None did	No, I don't think it would	No
433	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
434	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
435	I don't know	1	\N	I don't know	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
436	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
437	No	0	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
438	Yes	1	No	I don't know	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	Maybe
439	Yes	1	No	No	\N	Yes, they all did	No, I only became aware later	Some did	Yes, I think it would	No
440	Yes	0	I am not sure	No	\N	I don't know	No, I only became aware later	None did	Maybe	Yes
441	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	Some did	Maybe	No
442	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	None did	Maybe	Yes
443	\N	\N	\N	\N	1	Some did	I was aware of some	Some did	Maybe	Maybe
444	\N	\N	\N	\N	0	No, none did	I was aware of some	None did	Yes, it has	Maybe
445	I don't know	0	I am not sure	No	\N	No, none did	No, I only became aware later	None did	Maybe	Maybe
446	Yes	1	No	I don't know	\N	Some did	I was aware of some	None did	Yes, I think it would	Yes
447	I don't know	1	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
448	I don't know	1	I am not sure	I don't know	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	No
449	I don't know	1	No	No	\N	\N	\N	\N	Maybe	No
450	\N	\N	\N	\N	1	\N	\N	\N	Yes, I think it would	No
451	Yes	0	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
452	No	1	\N	No	\N	Some did	I was aware of some	None did	Yes, it has	Yes
453	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Maybe	Yes
454	Yes	1	I am not sure	No	\N	\N	\N	\N	No, I don't think it would	Yes
455	No	1	No	No	\N	No, none did	N/A (not currently aware)	Some did	Yes, it has	Maybe
456	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	No, I don't think it would	Maybe
457	Yes	1	No	I don't know	\N	\N	\N	\N	Yes, I think it would	Yes
458	Yes	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
459	Not eligible for coverage 	0	\N	No	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	No
460	No	1	\N	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
461	I don't know	1	I am not sure	No	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	Maybe
462	Yes	0	I am not sure	No	\N	Some did	N/A (not currently aware)	None did	Maybe	Yes
463	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	No
464	I don't know	0	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
465	Yes	1	No	No	\N	Yes, they all did	I was aware of some	Yes, they all did	Yes, I think it would	No
466	Yes	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
467	No	1	No	No	\N	Yes, they all did	I was aware of some	None did	Maybe	Yes
468	\N	\N	\N	\N	1	No, none did	Yes, I was aware of all of them	None did	Maybe	Yes
469	Yes	0	Yes	Yes	\N	Some did	I was aware of some	None did	Maybe	Yes
470	No	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
471	Yes	0	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	Some did	Maybe	No
472	Yes	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	Some did	Maybe	No
473	Yes	0	Yes	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
474	I don't know	1	I am not sure	No	\N	I don't know	I was aware of some	None did	Maybe	Maybe
475	Yes	1	I am not sure	Yes	\N	Some did	I was aware of some	Some did	Maybe	No
476	I don't know	1	I am not sure	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
477	Yes	0	I am not sure	No	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	No
478	I don't know	1	I am not sure	No	\N	Yes, they all did	No, I only became aware later	Some did	Maybe	Maybe
479	I don't know	1	No	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
480	I don't know	1	No	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	No
481	Yes	1	No	Yes	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
482	\N	\N	\N	\N	0	Yes, they all did	I was aware of some	None did	Maybe	Yes
483	Yes	1	I am not sure	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
484	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
485	\N	\N	\N	\N	0	Some did	I was aware of some	Some did	Maybe	Yes
486	\N	\N	\N	\N	0	\N	\N	\N	Maybe	Yes
487	Not eligible for coverage 	0	I am not sure	I don't know	\N	\N	\N	\N	Yes, it has	Yes
488	\N	\N	\N	\N	0	No, none did	No, I only became aware later	None did	Yes, I think it would	No
489	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	Some did	Maybe	Yes
490	No	1	\N	No	\N	\N	\N	\N	Yes, I think it would	Maybe
491	Yes	1	No	Yes	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
492	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
493	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
494	Yes	1	Yes	I don't know	\N	Some did	N/A (not currently aware)	None did	Maybe	No
495	Yes	1	Yes	No	\N	Yes, they all did	I was aware of some	Some did	Maybe	Maybe
496	Yes	1	Yes	No	\N	I don't know	N/A (not currently aware)	None did	No, it has not	Yes
497	Yes	0	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
498	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Maybe
499	\N	\N	\N	\N	1	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Maybe
500	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Maybe
501	\N	\N	\N	\N	1	No, none did	Yes, I was aware of all of them	None did	Yes, it has	Yes
502	Yes	1	I am not sure	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
503	I don't know	1	I am not sure	No	\N	Some did	I was aware of some	Some did	Maybe	Maybe
504	Yes	1	No	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	Maybe
505	No	1	Yes	No	\N	No, none did	No, I only became aware later	None did	Yes, I think it would	Yes
506	No	1	\N	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
507	Yes	1	Yes	No	\N	Some did	No, I only became aware later	None did	Yes, it has	Yes
508	Yes	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
509	Yes	1	No	Yes	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
510	Yes	0	I am not sure	Yes	\N	Yes, they all did	Yes, I was aware of all of them	None did	Maybe	Yes
511	\N	\N	\N	\N	0	\N	\N	\N	Maybe	No
512	Yes	1	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	Yes
513	Yes	1	No	Yes	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
514	Yes	1	Yes	No	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	Maybe
515	I don't know	0	I am not sure	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
516	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	No
518	\N	\N	\N	\N	0	No, none did	Yes, I was aware of all of them	None did	Maybe	Maybe
519	\N	\N	\N	\N	0	Some did	I was aware of some	Some did	Yes, it has	Yes
520	I don't know	1	I am not sure	No	\N	Some did	I was aware of some	None did	Yes, I think it would	Yes
521	Not eligible for coverage 	1	\N	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
522	\N	\N	\N	\N	1	Some did	No, I only became aware later	None did	Yes, I think it would	No
523	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
524	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	No
525	I don't know	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
526	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	Yes, it has	No
527	I don't know	0	No	No	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	Yes
528	I don't know	1	I am not sure	I don't know	\N	\N	\N	\N	Yes, I think it would	No
529	No	1	Yes	I don't know	\N	Some did	I was aware of some	Some did	No, I don't think it would	No
530	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	Maybe
531	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	Yes
532	I don't know	0	No	No	\N	\N	\N	\N	Maybe	Yes
533	No	0	\N	No	\N	Some did	I was aware of some	None did	Maybe	Yes
534	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	None did	No, it has not	Yes
535	I don't know	0	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Maybe
536	No	1	I am not sure	No	\N	Some did	I was aware of some	Yes, they all did	Yes, I think it would	Yes
537	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
538	Yes	1	No	No	\N	Some did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	No
539	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
540	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Yes
541	\N	\N	\N	\N	1	No, none did	I was aware of some	None did	Yes, it has	Maybe
542	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
543	I don't know	1	No	No	\N	I don't know	I was aware of some	None did	Maybe	No
544	I don't know	0	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
545	Not eligible for coverage 	0	\N	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
546	\N	\N	\N	\N	0	\N	\N	\N	Yes, I think it would	Yes
547	I don't know	1	I am not sure	No	\N	I don't know	I was aware of some	Some did	Maybe	Yes
548	No	1	No	Yes	\N	Some did	I was aware of some	Some did	Maybe	No
549	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
550	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Yes
551	I don't know	1	I am not sure	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Maybe	No
552	Yes	0	No	Yes	\N	Yes, they all did	I was aware of some	Yes, they all did	Yes, I think it would	No
553	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	Some did	Maybe	No
554	Yes	0	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
555	No	1	Yes	No	\N	Some did	I was aware of some	Some did	Yes, it has	Yes
556	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Maybe
557	Not eligible for coverage 	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
558	Yes	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
559	Yes	0	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
560	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
561	I don't know	1	I am not sure	I don't know	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Maybe
562	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
563	\N	\N	\N	\N	0	\N	\N	\N	No, I don't think it would	No
564	Yes	1	No	I don't know	\N	Some did	N/A (not currently aware)	None did	Maybe	No
565	No	1	No	No	\N	\N	\N	\N	Yes, I think it would	No
566	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
567	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
568	I don't know	1	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	No
569	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
570	No	1	\N	No	\N	Some did	I was aware of some	None did	Yes, I think it would	No
571	Yes	1	I am not sure	No	\N	\N	\N	\N	No, I don't think it would	Yes
572	Yes	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
573	Yes	0	Yes	I don't know	\N	\N	\N	\N	No, I don't think it would	No
574	Yes	0	Yes	I don't know	\N	Some did	I was aware of some	None did	Maybe	Yes
575	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	Yes, they all did	Maybe	No
576	Yes	1	No	I don't know	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	Yes
577	Yes	0	I am not sure	I don't know	\N	\N	\N	\N	Maybe	Yes
578	Yes	1	Yes	No	\N	Some did	I was aware of some	None did	Yes, it has	Maybe
579	I don't know	1	I am not sure	No	\N	Some did	No, I only became aware later	Some did	Maybe	Maybe
580	\N	\N	\N	\N	0	Some did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
581	Not eligible for coverage 	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
582	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Maybe	No
583	Not eligible for coverage 	1	I am not sure	I don't know	\N	No, none did	Yes, I was aware of all of them	Some did	Maybe	Yes
584	I don't know	1	No	I don't know	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
585	Yes	1	Yes	No	\N	Some did	Yes, I was aware of all of them	None did	Maybe	Yes
586	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
587	Yes	0	Yes	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
588	Not eligible for coverage 	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
589	I don't know	1	I am not sure	I don't know	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
590	I don't know	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
591	Yes	0	Yes	Yes	\N	\N	\N	\N	No, I don't think it would	Yes
592	Yes	0	Yes	No	\N	\N	\N	\N	Maybe	Yes
593	I don't know	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
594	Yes	1	Yes	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Maybe	No
595	I don't know	1	I am not sure	I don't know	\N	\N	\N	\N	Yes, I think it would	Maybe
596	\N	\N	\N	\N	0	Some did	I was aware of some	None did	Maybe	Yes
597	\N	\N	\N	\N	1	Some did	I was aware of some	Some did	Yes, I think it would	Yes
598	Yes	1	Yes	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Yes
599	Yes	0	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
600	I don't know	0	I am not sure	No	\N	I don't know	N/A (not currently aware)	Some did	Maybe	No
601	Not eligible for coverage 	0	\N	No	\N	\N	\N	\N	Maybe	No
602	\N	\N	\N	\N	1	\N	\N	\N	Yes, I think it would	Yes
603	Yes	1	Yes	No	\N	I don't know	N/A (not currently aware)	None did	No, it has not	Maybe
604	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
605	I don't know	1	No	I don't know	\N	Some did	I was aware of some	None did	Maybe	Yes
606	Yes	1	I am not sure	Yes	\N	Yes, they all did	No, I only became aware later	None did	Yes, it has	Maybe
607	\N	\N	\N	\N	1	Some did	No, I only became aware later	None did	Yes, I think it would	Maybe
608	\N	\N	\N	\N	1	\N	\N	\N	Yes, I think it would	Maybe
609	Yes	1	Yes	No	\N	Some did	No, I only became aware later	None did	Yes, I think it would	Yes
610	I don't know	1	I am not sure	I don't know	\N	Some did	No, I only became aware later	None did	Maybe	Yes
611	Not eligible for coverage 	0	\N	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
612	Yes	1	No	I don't know	\N	Some did	No, I only became aware later	None did	Yes, I think it would	Yes
613	I don't know	0	\N	No	\N	I don't know	N/A (not currently aware)	None did	Yes, it has	Yes
614	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
615	Yes	1	No	No	\N	No, none did	Yes, I was aware of all of them	None did	No, I don't think it would	No
616	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	No, it has not	Yes
617	Yes	1	Yes	I don't know	\N	Some did	I was aware of some	Some did	Yes, it has	Yes
618	Not eligible for coverage 	1	\N	Yes	\N	Yes, they all did	I was aware of some	Yes, they all did	Maybe	Yes
619	\N	\N	\N	\N	0	Some did	N/A (not currently aware)	None did	Yes, I think it would	No
620	Yes	1	I am not sure	Yes	\N	Some did	I was aware of some	Some did	No, I don't think it would	Yes
621	Yes	1	I am not sure	I don't know	\N	Some did	No, I only became aware later	Some did	Yes, I think it would	No
622	Yes	0	No	Yes	\N	\N	\N	\N	Yes, I think it would	Yes
623	\N	\N	\N	\N	0	Some did	I was aware of some	None did	Yes, I think it would	Maybe
624	Yes	1	I am not sure	No	\N	Some did	I was aware of some	None did	Maybe	Yes
625	I don't know	0	I am not sure	No	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	Maybe
626	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
627	Not eligible for coverage 	1	\N	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
628	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
629	Yes	1	I am not sure	No	\N	I don't know	I was aware of some	None did	Yes, I think it would	No
630	I don't know	1	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	Some did	Maybe	No
631	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
632	Yes	0	Yes	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
633	Yes	0	No	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
634	Yes	1	Yes	No	\N	Yes, they all did	I was aware of some	Yes, they all did	Maybe	No
635	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	No, I don't think it would	Yes
636	Yes	1	No	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	No
637	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
638	No	1	\N	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
639	\N	\N	\N	\N	0	\N	\N	\N	Yes, I think it would	Maybe
640	I don't know	1	No	No	\N	I don't know	I was aware of some	None did	Yes, I think it would	No
641	Not eligible for coverage 	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
642	No	1	\N	No	\N	Some did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
643	I don't know	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
644	Yes	1	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	No, it has not	Maybe
645	I don't know	1	I am not sure	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
646	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
647	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	No
648	I don't know	1	No	Yes	\N	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Maybe
649	Yes	1	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
650	No	1	No	No	\N	No, none did	No, I only became aware later	None did	Yes, I think it would	Yes
651	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
652	I don't know	0	No	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Yes
653	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
654	Yes	1	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
655	I don't know	1	I am not sure	I don't know	\N	\N	\N	\N	Maybe	No
656	Yes	1	I am not sure	Yes	\N	Some did	I was aware of some	Some did	Maybe	Maybe
657	I don't know	0	No	Yes	\N	No, none did	I was aware of some	None did	Maybe	No
658	I don't know	1	No	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Maybe	No
659	Yes	1	I am not sure	No	\N	Some did	I was aware of some	None did	Yes, it has	Yes
660	Yes	1	I am not sure	No	\N	Some did	No, I only became aware later	None did	Yes, I think it would	Yes
661	Yes	1	Yes	Yes	\N	No, none did	N/A (not currently aware)	Some did	No, it has not	Maybe
662	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
663	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
664	No	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
665	Not eligible for coverage 	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	Some did	No, I don't think it would	Maybe
666	Yes	1	Yes	No	\N	Yes, they all did	I was aware of some	None did	Yes, it has	Yes
667	Yes	0	Yes	Yes	\N	Some did	I was aware of some	Some did	No, I don't think it would	Yes
668	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Maybe	Maybe
669	No	1	Yes	No	\N	\N	\N	\N	Yes, I think it would	No
670	I don't know	1	I am not sure	No	\N	Some did	N/A (not currently aware)	Some did	Maybe	No
671	Yes	0	I am not sure	I don't know	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	No
672	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
673	I don't know	0	No	I don't know	\N	\N	\N	\N	Yes, I think it would	Yes
674	Yes	0	Yes	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
675	Yes	0	No	Yes	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	No
676	\N	\N	\N	\N	1	I don't know	I was aware of some	None did	Yes, I think it would	Yes
677	Yes	1	No	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
678	Yes	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
679	Yes	0	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
680	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, it has	Yes
681	I don't know	0	No	No	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	Maybe
682	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
683	Yes	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
684	Yes	0	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	No
685	Yes	1	Yes	Yes	\N	Yes, they all did	N/A (not currently aware)	None did	Maybe	Yes
686	Yes	0	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	Yes
687	I don't know	0	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	Some did	Maybe	No
688	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
689	Yes	1	Yes	No	\N	Some did	No, I only became aware later	None did	Maybe	No
690	Yes	1	Yes	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
691	Yes	1	Yes	No	\N	\N	\N	\N	Maybe	Maybe
692	I don't know	1	No	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
693	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Yes
694	Yes	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
695	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	No
696	\N	\N	\N	\N	1	Some did	Yes, I was aware of all of them	Some did	No, I don't think it would	No
697	I don't know	1	No	I don't know	\N	No, none did	Yes, I was aware of all of them	Some did	Yes, I think it would	No
698	\N	\N	\N	\N	0	No, none did	No, I only became aware later	None did	Yes, I think it would	Yes
699	I don't know	0	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
700	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
701	No	0	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
702	I don't know	0	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	Maybe
703	Not eligible for coverage 	1	\N	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
704	No	1	No	No	\N	No, none did	No, I only became aware later	None did	No, I don't think it would	No
705	No	1	No	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, it has	No
706	No	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
707	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, it has	Maybe
708	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
972	Yes	1	Yes	Yes	\N	\N	\N	\N	No, I don't think it would	No
709	I don't know	0	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
710	Yes	0	I am not sure	Yes	\N	No, none did	No, I only became aware later	Some did	Yes, I think it would	No
711	\N	\N	\N	\N	1	Some did	Yes, I was aware of all of them	None did	Maybe	No
712	\N	\N	\N	\N	1	\N	\N	\N	Yes, I think it would	Yes
713	Yes	1	Yes	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	No, I don't think it would	No
714	Not eligible for coverage 	0	\N	Yes	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
715	No	1	I am not sure	Yes	\N	\N	\N	\N	Yes, I think it would	Yes
716	\N	\N	\N	\N	0	Some did	I was aware of some	None did	Yes, I think it would	Yes
717	No	0	No	Yes	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	No
718	Yes	1	Yes	Yes	\N	Some did	No, I only became aware later	Some did	No, I don't think it would	Yes
719	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	None did	Maybe	No
720	I don't know	1	I am not sure	I don't know	\N	\N	\N	\N	Yes, I think it would	No
721	Yes	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
722	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
723	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
724	I don't know	1	I am not sure	I don't know	\N	No, none did	No, I only became aware later	None did	No, I don't think it would	No
725	I don't know	0	No	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
726	Not eligible for coverage 	0	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
727	\N	\N	\N	\N	0	I don't know	No, I only became aware later	None did	Maybe	No
728	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Yes, it has	Yes
729	Yes	0	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
730	No	1	\N	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Maybe
731	I don't know	0	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Yes
732	Yes	1	Yes	I don't know	\N	\N	\N	\N	Yes, I think it would	Yes
733	I don't know	1	I am not sure	I don't know	\N	I don't know	I was aware of some	None did	Yes, I think it would	Maybe
734	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	None did	Yes, it has	Yes
735	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
736	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	Some did	Maybe	Maybe
737	Not eligible for coverage 	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Maybe
738	Yes	0	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
739	\N	\N	\N	\N	0	\N	\N	\N	Maybe	No
740	Yes	1	Yes	Yes	\N	Some did	No, I only became aware later	None did	Yes, I think it would	No
741	I don't know	1	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
742	Yes	1	Yes	No	\N	Yes, they all did	I was aware of some	None did	No, I don't think it would	No
743	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Yes, I think it would	No
744	Yes	1	Yes	No	\N	Some did	I was aware of some	None did	Yes, I think it would	Yes
745	Yes	1	I am not sure	Yes	\N	Yes, they all did	I was aware of some	Yes, they all did	Maybe	No
746	\N	\N	\N	\N	0	Some did	I was aware of some	Some did	Maybe	Yes
747	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Maybe
748	\N	\N	\N	\N	0	\N	\N	\N	Yes, I think it would	Maybe
749	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
750	No	0	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
751	\N	\N	\N	\N	0	I don't know	I was aware of some	None did	Maybe	Maybe
752	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Yes, I think it would	Maybe
753	\N	\N	\N	\N	1	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
754	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
755	Yes	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
756	Yes	0	Yes	Yes	\N	\N	\N	\N	No, I don't think it would	No
757	Not eligible for coverage 	1	\N	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
758	Yes	0	Yes	Yes	\N	Some did	I was aware of some	Some did	Yes, it has	Yes
759	I don't know	0	I am not sure	Yes	\N	Some did	I was aware of some	None did	No, I don't think it would	Yes
760	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
761	Yes	1	I am not sure	No	\N	Some did	I was aware of some	None did	Yes, it has	Yes
762	Yes	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	No
763	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
764	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	Yes
765	Yes	1	Yes	No	\N	Yes, they all did	No, I only became aware later	None did	Maybe	Maybe
766	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	No
767	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
768	\N	\N	\N	\N	0	Some did	N/A (not currently aware)	Some did	Yes, I think it would	No
769	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	None did	Maybe	Yes
770	No	1	I am not sure	No	\N	Some did	I was aware of some	Some did	Maybe	No
771	Yes	1	No	No	\N	\N	\N	\N	No, I don't think it would	No
772	Not eligible for coverage 	1	\N	I don't know	\N	\N	\N	\N	Yes, I think it would	No
773	Not eligible for coverage 	1	\N	Yes	\N	Some did	I was aware of some	Some did	No, I don't think it would	Yes
774	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	Some did	Maybe	Maybe
775	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
776	Yes	1	Yes	I don't know	\N	Yes, they all did	I was aware of some	None did	Yes, I think it would	Yes
777	Yes	1	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	No, it has not	Yes
778	Yes	1	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
779	Yes	0	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
780	I don't know	1	I am not sure	No	\N	Some did	N/A (not currently aware)	None did	Yes, I think it would	Yes
781	Yes	0	No	Yes	\N	\N	\N	\N	Yes, I think it would	No
782	Yes	1	Yes	No	\N	Yes, they all did	I was aware of some	Yes, they all did	Maybe	Yes
783	Yes	0	Yes	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
784	\N	\N	\N	\N	0	\N	\N	\N	Yes, it has	Maybe
785	No	1	No	No	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Yes
786	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	Some did	Maybe	No
787	I don't know	1	I am not sure	I don't know	\N	\N	\N	\N	Maybe	No
788	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	No
789	\N	\N	\N	\N	1	Some did	No, I only became aware later	Some did	Yes, it has	Maybe
790	Yes	1	No	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
791	I don't know	1	No	I don't know	\N	Some did	I was aware of some	None did	Yes, I think it would	Maybe
792	Yes	1	Yes	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	None did	No, it has not	Yes
793	Yes	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
794	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
795	Yes	1	Yes	Yes	\N	Some did	N/A (not currently aware)	None did	Yes, I think it would	Yes
796	I don't know	1	I am not sure	Yes	\N	Some did	No, I only became aware later	None did	Maybe	Maybe
797	\N	\N	\N	\N	0	\N	\N	\N	Yes, I think it would	Maybe
798	Yes	1	I am not sure	No	\N	Some did	I was aware of some	None did	Maybe	Yes
799	Yes	0	Yes	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
800	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
801	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
802	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
803	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
804	Yes	1	Yes	Yes	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	Maybe
805	Yes	1	No	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
806	Not eligible for coverage 	1	\N	No	\N	\N	\N	\N	Yes, it has	Yes
807	Yes	0	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
808	\N	\N	\N	\N	0	\N	\N	\N	No, I don't think it would	No
809	Yes	1	No	No	\N	Some did	I was aware of some	None did	Yes, it has	Yes
810	No	0	I am not sure	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
811	\N	\N	\N	\N	0	\N	\N	\N	Yes, I think it would	Maybe
812	No	1	No	No	\N	\N	\N	\N	Yes, I think it would	No
813	Yes	1	I am not sure	No	\N	Yes, they all did	No, I only became aware later	None did	Maybe	No
814	I don't know	0	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Maybe
815	Not eligible for coverage 	1	\N	No	\N	\N	\N	\N	Yes, I think it would	No
816	\N	\N	\N	\N	1	No, none did	Yes, I was aware of all of them	None did	Yes, it has	Yes
817	I don't know	1	I am not sure	No	\N	\N	\N	\N	Maybe	No
818	I don't know	0	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
819	I don't know	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Maybe
820	\N	\N	\N	\N	1	Some did	N/A (not currently aware)	None did	Yes, I think it would	Yes
821	I don't know	0	No	No	\N	\N	\N	\N	Yes, I think it would	Maybe
822	Yes	0	No	No	\N	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
823	\N	\N	\N	\N	0	\N	\N	\N	No, I don't think it would	Maybe
824	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
825	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
826	Yes	1	Yes	No	\N	Some did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
827	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
828	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
829	I don't know	1	I am not sure	No	\N	I don't know	I was aware of some	None did	Yes, I think it would	No
830	I don't know	1	No	Yes	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
831	Yes	1	I am not sure	I don't know	\N	Yes, they all did	I was aware of some	Yes, they all did	Maybe	Yes
832	Yes	1	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	No, I don't think it would	No
833	Yes	1	No	No	\N	Yes, they all did	I was aware of some	None did	Maybe	No
834	No	1	No	No	\N	\N	\N	\N	Maybe	No
835	Yes	1	Yes	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Maybe	Yes
836	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
837	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
838	Yes	1	I am not sure	No	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	No
839	\N	\N	\N	\N	0	Yes, they all did	I was aware of some	Yes, they all did	Yes, I think it would	No
840	\N	\N	\N	\N	1	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Maybe
841	No	0	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
842	Yes	1	No	I don't know	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	No
843	\N	\N	\N	\N	1	Some did	No, I only became aware later	None did	Yes, I think it would	Yes
844	Yes	1	Yes	No	\N	Yes, they all did	I was aware of some	None did	Maybe	Yes
845	Yes	0	I am not sure	I don't know	\N	\N	\N	\N	Maybe	No
846	Yes	1	Yes	I don't know	\N	Yes, they all did	I was aware of some	Some did	Yes, it has	Yes
847	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
848	I don't know	0	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Yes
849	Yes	1	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
850	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	None did	Maybe	No
851	Yes	0	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
852	No	0	I am not sure	I don't know	\N	Some did	I was aware of some	None did	Yes, I think it would	Yes
853	I don't know	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
854	Yes	1	No	I don't know	\N	Some did	No, I only became aware later	Some did	Yes, I think it would	Maybe
855	Yes	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
856	\N	\N	\N	\N	1	Some did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
857	Yes	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
858	I don't know	1	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	No
859	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
860	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	Some did	Maybe	No
861	I don't know	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
862	No	0	\N	Yes	\N	No, none did	I was aware of some	None did	Maybe	Maybe
863	I don't know	0	I am not sure	Yes	\N	I don't know	No, I only became aware later	None did	Yes, I think it would	No
864	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
865	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
866	I don't know	1	I am not sure	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
867	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	Yes
868	Not eligible for coverage	1	\N	Yes	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Yes
869	I don't know	0	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
870	Yes	1	Yes	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
871	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	Some did	Maybe	No
872	\N	\N	\N	\N	0	Yes, they all did	Yes, I was aware of all of them	None did	Yes, it has	Yes
873	\N	\N	\N	\N	1	Some did	No, I only became aware later	Some did	Maybe	Yes
874	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Maybe
875	I don't know	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	No
876	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
877	\N	\N	\N	\N	1	\N	\N	\N	Maybe	No
878	Yes	0	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	No
879	\N	\N	\N	\N	1	\N	\N	\N	No, I don't think it would	Maybe
880	Not eligible for coverage 	1	\N	I don't know	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
881	Yes	0	Yes	Yes	\N	Some did	I was aware of some	None did	Yes, I think it would	Maybe
882	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Maybe	No
883	I don't know	1	No	I don't know	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Maybe
884	I don't know	1	I am not sure	I don't know	\N	Some did	No, I only became aware later	Some did	Yes, I think it would	No
885	\N	\N	\N	\N	0	Yes, they all did	I was aware of some	Some did	Maybe	Yes
886	\N	\N	\N	\N	1	Some did	Yes, I was aware of all of them	None did	No, I don't think it would	Maybe
887	\N	\N	\N	\N	1	\N	\N	\N	Maybe	No
888	\N	\N	\N	\N	0	I don't know	No, I only became aware later	None did	Yes, I think it would	Yes
889	I don't know	0	I am not sure	No	\N	No, none did	No, I only became aware later	None did	Yes, it has	Yes
890	I don't know	0	No	Yes	\N	Some did	No, I only became aware later	None did	Yes, I think it would	Maybe
891	\N	\N	\N	\N	0	No, none did	I was aware of some	Some did	Maybe	No
892	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
893	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Maybe
894	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	Yes
895	Not eligible for coverage 	0	\N	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
896	\N	\N	\N	\N	1	\N	\N	\N	No, I don't think it would	Yes
897	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	Some did	No, I don't think it would	No
898	Yes	0	Yes	I don't know	\N	Some did	No, I only became aware later	None did	Yes, I think it would	Maybe
899	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	Some did	Yes, I think it would	No
900	\N	\N	\N	\N	1	Some did	I was aware of some	Some did	Maybe	No
901	\N	\N	\N	\N	1	Some did	Yes, I was aware of all of them	Some did	Maybe	Yes
902	\N	\N	\N	\N	0	Some did	No, I only became aware later	Some did	Maybe	Yes
903	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
904	I don't know	0	No	I don't know	\N	No, none did	Yes, I was aware of all of them	None did	No, I don't think it would	Maybe
905	I don't know	1	No	Yes	\N	Some did	I was aware of some	Some did	Yes, it has	Yes
906	Not eligible for coverage 	0	\N	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
907	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	Some did	Maybe	Maybe
908	Yes	0	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
909	\N	\N	\N	\N	0	Some did	I was aware of some	Some did	Yes, I think it would	No
910	No	0	Yes	No	\N	\N	\N	\N	Yes, I think it would	No
911	No	1	Yes	No	\N	Yes, they all did	I was aware of some	Some did	Maybe	Maybe
912	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Yes
913	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
914	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
915	Not eligible for coverage 	1	I am not sure	No	\N	No, none did	Yes, I was aware of all of them	None did	No, I don't think it would	Yes
916	Yes	1	Yes	I don't know	\N	\N	\N	\N	Yes, I think it would	Yes
917	No	1	No	No	\N	\N	\N	\N	Maybe	No
918	\N	\N	\N	\N	0	Some did	I was aware of some	Some did	Maybe	Maybe
919	No	1	\N	No	\N	Some did	No, I only became aware later	None did	Maybe	No
920	\N	\N	\N	\N	1	\N	\N	\N	Maybe	Yes
921	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Maybe	No
922	\N	\N	\N	\N	0	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Maybe
923	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
924	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
925	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
926	I don't know	1	\N	I don't know	\N	Some did	No, I only became aware later	Some did	Maybe	No
927	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	No
928	I don't know	1	No	I don't know	\N	I don't know	No, I only became aware later	None did	Maybe	Maybe
929	No	1	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	No
930	No	1	Yes	No	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	Yes
931	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	No
932	I don't know	1	No	I don't know	\N	\N	\N	\N	Maybe	Maybe
933	Yes	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
934	Not eligible for coverage	1	I am not sure	I don't know	\N	\N	\N	\N	Yes, I think it would	No
935	Yes	1	I am not sure	No	\N	Some did	I was aware of some	Some did	Maybe	No
936	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
937	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
938	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	Some did	Maybe	Yes
939	No	0	\N	No	\N	Some did	I was aware of some	None did	No, I don't think it would	Yes
940	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	None did	Maybe	Maybe
941	Yes	1	No	No	\N	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Maybe
942	Not eligible for coverage 	1	\N	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
943	Yes	1	No	Yes	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
944	Yes	0	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, it has	Yes
945	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	No, I don't think it would	No
946	\N	\N	\N	\N	1	\N	\N	\N	Yes, I think it would	No
947	I don't know	1	No	No	\N	\N	\N	\N	Maybe	No
948	Yes	0	I am not sure	No	\N	Some did	I was aware of some	Some did	Yes, it has	Maybe
949	\N	\N	\N	\N	1	No, none did	Yes, I was aware of all of them	None did	Maybe	Yes
950	I don't know	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
951	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
952	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
953	Yes	0	No	Yes	\N	\N	\N	\N	Maybe	Yes
954	Yes	1	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
955	No	1	No	No	\N	Some did	Yes, I was aware of all of them	Some did	Yes, I think it would	No
956	I don't know	0	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
957	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
958	Yes	0	No	I don't know	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	No
959	Yes	1	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
960	Yes	0	I am not sure	Yes	\N	Yes, they all did	I was aware of some	None did	Maybe	No
961	I don't know	0	No	I don't know	\N	I don't know	No, I only became aware later	None did	Maybe	Yes
962	\N	\N	\N	\N	1	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
963	Yes	0	I am not sure	No	\N	Yes, they all did	I was aware of some	None did	No, I don't think it would	No
964	Yes	0	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
965	Yes	0	No	No	\N	\N	\N	\N	Maybe	Maybe
966	No	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	Maybe
967	Yes	0	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
968	Yes	0	I am not sure	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
969	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
970	Yes	1	Yes	Yes	\N	I don't know	I was aware of some	None did	Yes, it has	Maybe
971	Yes	1	I am not sure	I don't know	\N	Some did	No, I only became aware later	Some did	Maybe	Yes
973	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	None did	No, I don't think it would	Yes
974	No	0	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
975	Yes	1	No	No	\N	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
976	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
977	I don't know	0	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
978	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	Yes
979	Yes	0	Yes	Yes	\N	\N	\N	\N	No, I don't think it would	No
980	I don't know	1	I am not sure	No	\N	Some did	I was aware of some	None did	Yes, I think it would	Maybe
981	I don't know	1	I am not sure	No	\N	Some did	I was aware of some	None did	Maybe	No
982	I don't know	1	I am not sure	I don't know	\N	No, none did	No, I only became aware later	None did	Maybe	Yes
983	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
984	I don't know	0	No	I don't know	\N	I don't know	No, I only became aware later	None did	No, I don't think it would	No
985	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	No, I don't think it would	Maybe
986	\N	\N	\N	\N	0	No, none did	I was aware of some	None did	Maybe	Maybe
987	No	1	\N	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
988	No	1	No	No	\N	\N	\N	\N	Yes, I think it would	No
989	\N	\N	\N	\N	1	\N	\N	\N	Maybe	Yes
990	I don't know	1	No	I don't know	\N	Some did	I was aware of some	None did	Yes, I think it would	Yes
991	Yes	1	I am not sure	Yes	\N	Some did	I was aware of some	None did	Maybe	Maybe
992	Yes	0	Yes	I don't know	\N	No, none did	I was aware of some	None did	Maybe	No
993	Yes	1	No	No	\N	Yes, they all did	I was aware of some	Yes, they all did	Yes, I think it would	No
994	No	0	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Maybe
995	Yes	1	No	I don't know	\N	Yes, they all did	I was aware of some	Some did	Maybe	No
996	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
997	Yes	1	I am not sure	I don't know	\N	Yes, they all did	I was aware of some	Some did	Maybe	Yes
998	Yes	0	No	No	\N	Some did	No, I only became aware later	Some did	Maybe	Maybe
999	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
1000	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	No, it has not	Yes
1001	No	1	\N	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1002	Yes	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
1003	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1004	Yes	1	Yes	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Maybe	Yes
1005	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Maybe	Yes
1006	Yes	1	Yes	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Maybe
1007	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1008	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	None did	No, it has not	Maybe
1009	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
1010	\N	\N	\N	\N	1	I don't know	No, I only became aware later	None did	Yes, I think it would	Maybe
1011	I don't know	1	I am not sure	Yes	\N	Yes, they all did	I was aware of some	Yes, they all did	Maybe	Maybe
1012	Yes	1	Yes	Yes	\N	No, none did	I was aware of some	None did	Maybe	No
1013	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	Yes
1014	Yes	1	I am not sure	Yes	\N	\N	\N	\N	Yes, I think it would	No
1015	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1016	Yes	0	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	None did	Maybe	Yes
1017	Yes	0	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1018	I don't know	1	No	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
1019	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	Some did	Maybe	Yes
1020	Not eligible for coverage 	1	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, it has	Maybe
1021	Yes	0	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1022	Yes	1	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	No, I don't think it would	No
1023	Yes	1	Yes	I don't know	\N	I don't know	N/A (not currently aware)	Some did	Maybe	No
1024	I don't know	1	I am not sure	Yes	\N	Some did	I was aware of some	Some did	Maybe	No
1025	No	1	No	No	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	Maybe
1026	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Some did	No, it has not	Maybe
1027	\N	\N	\N	\N	0	No, none did	Yes, I was aware of all of them	None did	Maybe	Yes
1028	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	No
1029	I don't know	0	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
1030	Yes	0	No	Yes	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
1031	No	0	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1032	Yes	0	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	No
1033	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	No
1034	No	1	\N	I don't know	\N	Some did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1035	Yes	0	I am not sure	Yes	\N	Some did	I was aware of some	Some did	Maybe	Maybe
1036	Not eligible for coverage 	1	\N	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
1037	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
1038	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	No
1039	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1040	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1041	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	Some did	Yes, I think it would	No
1042	No	1	No	No	\N	\N	\N	\N	Yes, I think it would	Yes
1043	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Maybe
1044	Yes	0	Yes	Yes	\N	\N	\N	\N	Maybe	No
1045	No	1	\N	No	\N	Some did	I was aware of some	None did	Maybe	No
1046	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
1047	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
1048	No	1	\N	No	\N	\N	\N	\N	Yes, I think it would	Yes
1049	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1050	I don't know	0	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
1051	No	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1052	Yes	1	I am not sure	No	\N	Some did	No, I only became aware later	None did	No, I don't think it would	No
1053	Yes	1	I am not sure	Yes	\N	Some did	I was aware of some	None did	Maybe	No
1054	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Maybe	Yes
1055	Not eligible for coverage 	1	\N	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
1056	Yes	1	I am not sure	Yes	\N	Some did	No, I only became aware later	None did	Yes, I think it would	Yes
1057	Not eligible for coverage 	1	\N	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1058	\N	\N	\N	\N	0	\N	\N	\N	Yes, I think it would	Yes
1059	Yes	0	No	Yes	\N	\N	\N	\N	Yes, I think it would	Yes
1060	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
1061	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
1062	Not eligible for coverage 	1	\N	No	\N	Some did	Yes, I was aware of all of them	Some did	Yes, it has	Yes
1063	I don't know	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
1064	Yes	1	No	No	\N	\N	\N	\N	Yes, I think it would	No
1065	No	1	No	No	\N	No, none did	I was aware of some	None did	Yes, I think it would	Yes
1066	\N	\N	\N	\N	1	Some did	Yes, I was aware of all of them	None did	Maybe	Yes
1067	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Yes, it has	Maybe
1068	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
1069	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
1070	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
1071	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Yes
1072	Yes	1	No	Yes	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	Maybe
1073	Not eligible for coverage 	0	I am not sure	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, I think it would	No
1074	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Maybe
1075	Yes	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
1076	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
1077	Not eligible for coverage	1	\N	I don't know	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
1078	\N	\N	\N	\N	0	\N	\N	\N	Yes, I think it would	Maybe
1079	No	1	\N	No	\N	No, none did	I was aware of some	None did	Yes, I think it would	Maybe
1080	Yes	1	No	I don't know	\N	Yes, they all did	I was aware of some	Some did	Yes, it has	Yes
1081	No	0	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1082	Yes	1	Yes	I don't know	\N	Yes, they all did	I was aware of some	None did	Yes, I think it would	Yes
1083	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1084	\N	\N	\N	\N	0	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
1085	I don't know	0	No	I don't know	\N	I don't know	I was aware of some	Yes, they all did	No, I don't think it would	No
1086	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1087	Not eligible for coverage 	1	\N	I don't know	\N	Some did	I was aware of some	Some did	No, I don't think it would	Yes
1088	\N	\N	\N	\N	1	Some did	Yes, I was aware of all of them	None did	Maybe	Yes
1089	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, it has	Maybe
1090	Yes	1	Yes	Yes	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	Maybe
1091	Yes	1	I am not sure	No	\N	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
1092	Yes	0	I am not sure	Yes	\N	Some did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
1093	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1094	Not eligible for coverage 	1	\N	No	\N	No, none did	N/A (not currently aware)	Some did	Yes, I think it would	No
1095	Yes	0	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
1096	Not eligible for coverage 	1	No	No	\N	Some did	No, I only became aware later	None did	Maybe	No
1097	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
1098	\N	\N	\N	\N	0	Some did	Yes, I was aware of all of them	Some did	Maybe	No
1099	I don't know	1	I am not sure	No	\N	Some did	No, I only became aware later	None did	Yes, I think it would	Maybe
1100	Yes	0	I am not sure	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	Yes
1101	I don't know	0	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	Some did	No, I don't think it would	No
1102	\N	\N	\N	\N	0	Yes, they all did	I was aware of some	None did	Maybe	Yes
1103	Yes	1	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
1104	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
1105	No	1	\N	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
1106	Yes	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
1107	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1108	\N	\N	\N	\N	1	Some did	I was aware of some	Some did	Maybe	No
1109	No	1	\N	No	\N	I don't know	No, I only became aware later	None did	Maybe	No
1110	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1111	No	0	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
1112	No	1	\N	Yes	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
1113	I don't know	1	No	I don't know	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	No
1114	I don't know	1	Yes	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
1115	No	1	\N	No	\N	\N	\N	\N	No, I don't think it would	No
1116	Not eligible for coverage	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Maybe
1117	No	0	No	No	\N	No, none did	No, I only became aware later	None did	Maybe	No
1118	I don't know	0	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
1119	No	1	Yes	No	\N	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
1120	I don't know	0	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	Maybe
1121	Yes	0	Yes	Yes	\N	Some did	I was aware of some	Yes, they all did	Maybe	No
1122	Yes	1	Yes	I don't know	\N	Some did	Yes, I was aware of all of them	None did	Yes, it has	Yes
1123	Yes	1	Yes	No	\N	\N	\N	\N	Maybe	Maybe
1124	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	None did	Yes, I think it would	Maybe
1125	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Maybe	Yes
1126	Yes	1	No	No	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	No
1127	Yes	0	Yes	I don't know	\N	Some did	I was aware of some	Some did	Yes, it has	Yes
1128	No	1	I am not sure	No	\N	Some did	I was aware of some	Some did	Maybe	Yes
1129	I don't know	0	No	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	Maybe
1130	Yes	1	No	No	\N	Yes, they all did	I was aware of some	None did	Yes, I think it would	No
1131	Yes	1	Yes	No	\N	I don't know	I was aware of some	None did	Maybe	Maybe
1132	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
1133	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
1134	Yes	0	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	Yes
1135	Yes	0	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	Yes
1136	Yes	0	Yes	Yes	\N	Some did	I was aware of some	None did	Yes, I think it would	Maybe
1137	Not eligible for coverage	0	\N	I don't know	\N	Yes, they all did	I was aware of some	Some did	Yes, it has	Yes
1138	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1139	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
1140	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Yes, it has	Yes
1141	Not eligible for coverage	1	I am not sure	No	\N	Some did	I was aware of some	None did	Maybe	Maybe
1142	Yes	1	Yes	No	\N	Yes, they all did	N/A (not currently aware)	None did	No, it has not	Yes
1143	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	None did	Maybe	No
1144	Yes	1	I am not sure	I don't know	\N	Some did	I was aware of some	None did	Maybe	Yes
1145	Yes	1	No	No	\N	Some did	I was aware of some	None did	Yes, I think it would	Maybe
1146	I don't know	1	I am not sure	Yes	\N	Yes, they all did	I was aware of some	Some did	Maybe	No
1147	I don't know	1	No	I don't know	\N	Some did	Yes, I was aware of all of them	Yes, they all did	Yes, I think it would	No
1148	I don't know	1	No	No	\N	\N	\N	\N	Maybe	No
1149	Yes	1	No	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Some did	No, I don't think it would	No
1150	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
1151	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
1152	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	Some did	Maybe	No
1153	Yes	1	I am not sure	No	\N	Some did	I was aware of some	Some did	No, I don't think it would	Yes
1154	I don't know	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	No
1155	Yes	1	No	I don't know	\N	Some did	I was aware of some	Some did	Maybe	No
1156	Yes	1	I am not sure	No	\N	Some did	I was aware of some	None did	Yes, I think it would	Yes
1157	I don't know	0	No	Yes	\N	I don't know	I was aware of some	Some did	Yes, I think it would	No
1158	Yes	1	No	Yes	\N	Some did	I was aware of some	None did	Maybe	Maybe
1159	I don't know	1	I am not sure	I don't know	\N	I don't know	I was aware of some	Some did	Maybe	Maybe
1160	No	0	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
1161	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
1162	Yes	0	Yes	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
1163	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1164	No	1	\N	No	\N	Some did	I was aware of some	Some did	Yes, it has	Yes
1165	Yes	1	Yes	Yes	\N	Some did	I was aware of some	None did	Yes, I think it would	Maybe
1166	Yes	0	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	No, I don't think it would	Yes
1167	Not eligible for coverage	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
1168	I don't know	0	No	No	\N	Some did	No, I only became aware later	Some did	Yes, I think it would	No
1169	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
1170	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	No
1171	I don't know	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
1172	\N	\N	\N	\N	1	\N	\N	\N	No, I don't think it would	Yes
1173	\N	\N	\N	\N	0	Some did	Yes, I was aware of all of them	None did	Yes, I think it would	No
1174	Not eligible for coverage	0	\N	No	\N	\N	\N	\N	No, I don't think it would	Yes
1175	Yes	0	Yes	No	\N	Yes, they all did	I was aware of some	None did	Maybe	Yes
1176	I don't know	1	No	No	\N	I don't know	No, I only became aware later	None did	No, I don't think it would	Maybe
1177	Yes	1	I am not sure	Yes	\N	\N	\N	\N	Yes, I think it would	Maybe
1178	Yes	1	Yes	No	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	Yes
1179	Not eligible for coverage	1	\N	I don't know	\N	\N	\N	\N	Yes, I think it would	No
1180	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1181	No	1	No	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
1182	Yes	1	Yes	Yes	\N	\N	\N	\N	Yes, I think it would	Yes
1183	No	0	\N	No	\N	\N	\N	\N	No, I don't think it would	No
1184	I don't know	1	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	Maybe
1185	Yes	1	No	I don't know	\N	Some did	I was aware of some	None did	No, it has not	Yes
1186	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
1187	Yes	0	No	Yes	\N	\N	\N	\N	Maybe	Yes
1188	No	0	No	No	\N	No, none did	No, I only became aware later	None did	Maybe	No
1189	\N	\N	\N	\N	1	\N	\N	\N	Maybe	Yes
1190	No	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
1191	I don't know	0	I am not sure	No	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	Maybe
1192	No	1	\N	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	No
1193	Yes	1	Yes	No	\N	No, none did	No, I only became aware later	Some did	Yes, I think it would	Yes
1194	Yes	0	No	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
1195	\N	\N	\N	\N	1	\N	\N	\N	Yes, I think it would	Yes
1196	I don't know	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1197	I don't know	0	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
1198	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Yes
1199	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1200	I don't know	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1201	No	1	No	No	\N	Some did	I was aware of some	Some did	No, I don't think it would	No
1202	Yes	1	No	I don't know	\N	Some did	N/A (not currently aware)	None did	Maybe	Yes
1203	I don't know	0	No	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
1204	Yes	1	Yes	I don't know	\N	Yes, they all did	I was aware of some	Some did	Maybe	Yes
1205	Yes	1	No	I don't know	\N	Some did	I was aware of some	None did	No, I don't think it would	No
1206	I don't know	0	I am not sure	No	\N	No, none did	No, I only became aware later	None did	Yes, I think it would	Maybe
1207	I don't know	0	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
1208	Yes	1	Yes	I don't know	\N	Some did	I was aware of some	Some did	Yes, it has	Yes
1209	I don't know	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1210	\N	\N	\N	\N	0	Some did	N/A (not currently aware)	Some did	Maybe	No
1211	I don't know	1	No	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1212	Yes	1	I am not sure	Yes	\N	No, none did	Yes, I was aware of all of them	None did	Yes, it has	No
1213	I don't know	1	No	I don't know	\N	Some did	No, I only became aware later	Some did	Maybe	Yes
1214	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Yes, I think it would	Maybe
1215	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1216	I don't know	0	No	Yes	\N	I don't know	No, I only became aware later	None did	Yes, I think it would	No
1217	\N	\N	\N	\N	0	I don't know	N/A (not currently aware)	None did	Maybe	No
1218	Yes	1	Yes	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
1219	\N	\N	\N	\N	0	I don't know	No, I only became aware later	None did	Yes, it has	Yes
1220	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
1221	Yes	1	Yes	No	\N	Yes, they all did	I was aware of some	None did	No, I don't think it would	Yes
1222	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1223	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Yes
1224	Yes	0	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	Yes
1423	Yes	1	I am not sure	I don't know	\N	\N	\N	\N	Maybe	No
1225	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	No, it has not	Yes
1226	Yes	1	Yes	I don't know	\N	Some did	I was aware of some	None did	Yes, it has	Yes
1227	Yes	1	No	No	\N	Some did	I was aware of some	None did	Maybe	Yes
1228	No	1	\N	No	\N	Some did	N/A (not currently aware)	None did	Yes, it has	Yes
1229	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1230	Not eligible for coverage	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
1231	Yes	0	Yes	No	\N	I don't know	No, I only became aware later	None did	No, I don't think it would	Yes
1232	Yes	1	Yes	No	\N	Some did	No, I only became aware later	None did	Maybe	No
1233	Yes	1	Yes	No	\N	Some did	No, I only became aware later	None did	Yes, it has	Yes
1234	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
1235	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Maybe	Yes
1236	Yes	1	Yes	No	\N	Some did	I was aware of some	Some did	Maybe	Yes
1237	Yes	1	I am not sure	No	\N	\N	\N	\N	Maybe	Yes
1238	I don't know	1	I am not sure	I don't know	\N	\N	\N	\N	Yes, I think it would	No
1239	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Maybe	Yes
1240	Not eligible for coverage	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
1241	Yes	1	No	I don't know	\N	Some did	I was aware of some	None did	Maybe	No
1242	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
1243	No	1	No	No	\N	Yes, they all did	I was aware of some	Yes, they all did	Yes, I think it would	Maybe
1244	I don't know	1	No	No	\N	Some did	N/A (not currently aware)	None did	Yes, I think it would	No
1245	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
1246	I don't know	1	No	No	\N	No, none did	No, I only became aware later	None did	Yes, I think it would	Yes
1247	\N	\N	\N	\N	1	Some did	I was aware of some	None did	Yes, it has	Yes
1248	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
1249	Yes	1	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1250	Yes	1	Yes	No	\N	Some did	I was aware of some	None did	No, I don't think it would	Yes
1251	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
1252	\N	\N	\N	\N	1	Some did	I was aware of some	Some did	Maybe	No
1253	Yes	0	No	I don't know	\N	I don't know	No, I only became aware later	None did	Maybe	Maybe
1254	\N	\N	\N	\N	1	\N	\N	\N	Yes, I think it would	No
1255	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Maybe
1256	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	Yes
1257	Yes	1	Yes	Yes	\N	Some did	No, I only became aware later	Some did	Yes, I think it would	Yes
1258	No	0	I am not sure	No	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	Yes
1259	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
1260	I don't know	0	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	Maybe
1261	\N	\N	\N	\N	1	\N	\N	\N	Yes, I think it would	Yes
1262	\N	\N	\N	\N	0	Yes, they all did	I was aware of some	None did	Yes, I think it would	Maybe
1263	No	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1264	I don't know	0	I am not sure	No	\N	Some did	I was aware of some	None did	Maybe	No
1265	\N	\N	\N	\N	0	Some did	No, I only became aware later	None did	Maybe	Yes
1266	Yes	0	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
1267	No	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
1268	Not eligible for coverage	1	No	I don't know	\N	\N	\N	\N	No, I don't think it would	No
1269	Yes	0	Yes	No	\N	I don't know	N/A (not currently aware)	Some did	Maybe	Maybe
1270	Yes	1	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	No, I don't think it would	Yes
1271	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1272	\N	\N	\N	\N	1	I don't know	I was aware of some	None did	Maybe	No
1273	Yes	1	I am not sure	No	\N	No, none did	I was aware of some	None did	Maybe	Yes
1274	I don't know	1	I am not sure	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Yes
1275	Yes	0	Yes	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
1276	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	No, I don't think it would	No
1277	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	Yes
1278	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
1279	Not eligible for coverage	1	\N	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1280	Not eligible for coverage	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1281	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
1282	I don't know	0	I am not sure	No	\N	Some did	N/A (not currently aware)	None did	Yes, I think it would	No
1283	Yes	1	No	I don't know	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	No
1284	Yes	1	No	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
1285	Not eligible for coverage	0	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
1286	Yes	0	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
1287	No	0	No	No	\N	No, none did	No, I only became aware later	None did	Yes, it has	No
1288	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1289	No	1	\N	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Maybe	No
1290	Yes	1	Yes	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	Yes, they all did	Maybe	Yes
1291	Yes	1	No	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
1292	Not eligible for coverage	1	\N	No	\N	\N	\N	\N	Yes, I think it would	Maybe
1293	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
1294	I don't know	1	No	No	\N	Some did	I was aware of some	Some did	Maybe	Maybe
1295	No	0	No	No	\N	\N	\N	\N	Yes, it has	Yes
1296	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Maybe	Maybe
1297	No	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
1298	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Yes, I think it would	Yes
1299	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
1300	Yes	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
1301	\N	\N	\N	\N	1	\N	\N	\N	Maybe	Maybe
1302	Yes	1	I am not sure	No	\N	Some did	I was aware of some	None did	Yes, it has	Yes
1303	No	0	I am not sure	I don't know	\N	No, none did	No, I only became aware later	None did	Yes, I think it would	Yes
1304	\N	\N	\N	\N	1	No, none did	Yes, I was aware of all of them	None did	Yes, it has	Maybe
1305	\N	\N	\N	\N	0	I don't know	I was aware of some	Some did	No, I don't think it would	No
1306	I don't know	0	No	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
1307	No	1	No	I don't know	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1308	I don't know	0	I am not sure	Yes	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
1309	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	No
1310	Yes	0	I am not sure	Yes	\N	\N	\N	\N	Yes, I think it would	No
1311	Yes	1	Yes	Yes	\N	Some did	N/A (not currently aware)	None did	Maybe	Yes
1312	Yes	0	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1313	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	None did	Yes, I think it would	Yes
1314	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	No
1315	\N	\N	\N	\N	0	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
1316	I don't know	1	I am not sure	No	\N	Some did	I was aware of some	Some did	Maybe	No
1317	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
1318	I don't know	0	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	No
1319	No	0	No	No	\N	I don't know	I was aware of some	None did	Yes, I think it would	No
1320	Yes	1	Yes	I don't know	\N	\N	\N	\N	Yes, I think it would	Yes
1321	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Yes, I think it would	No
1322	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
1323	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Maybe
1324	Yes	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
1325	Yes	0	Yes	Yes	\N	No, none did	No, I only became aware later	None did	No, it has not	Yes
1326	\N	\N	\N	\N	1	Some did	No, I only became aware later	None did	Yes, it has	Yes
1327	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	None did	Yes, I think it would	Yes
1328	Not eligible for coverage	1	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	No
1329	No	1	I am not sure	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Yes
1330	No	0	Yes	No	\N	\N	\N	\N	Maybe	Yes
1331	I don't know	1	No	I don't know	\N	I don't know	N/A (not currently aware)	None did	Maybe	Yes
1332	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
1333	Yes	1	Yes	I don't know	\N	Some did	No, I only became aware later	Some did	Yes, I think it would	Yes
1334	No	0	\N	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
1335	No	1	No	No	\N	\N	\N	\N	Yes, I think it would	Yes
1336	Not eligible for coverage	1	\N	No	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1337	I don't know	0	No	No	\N	Some did	Yes, I was aware of all of them	Some did	Maybe	No
1338	Not eligible for coverage	1	\N	No	\N	\N	\N	\N	Yes, I think it would	Maybe
1339	No	1	No	No	\N	Some did	I was aware of some	None did	Maybe	Maybe
1340	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1341	Yes	0	Yes	Yes	\N	Some did	Yes, I was aware of all of them	Some did	Yes, I think it would	Maybe
1342	No	1	No	I don't know	\N	Some did	I was aware of some	Some did	Maybe	No
1343	No	0	\N	No	\N	Some did	I was aware of some	Some did	Maybe	Yes
1344	No	0	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	No
1345	I don't know	0	No	Yes	\N	\N	\N	\N	Yes, I think it would	No
1346	I don't know	1	Yes	Yes	\N	I don't know	N/A (not currently aware)	Some did	No, I don't think it would	No
1347	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Yes
1348	No	0	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
1349	I don't know	0	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
1350	No	1	Yes	No	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
1351	I don't know	1	No	I don't know	\N	Some did	I was aware of some	Some did	Maybe	Yes
1352	Yes	1	Yes	I don't know	\N	No, none did	Yes, I was aware of all of them	None did	No, I don't think it would	Yes
1353	No	1	Yes	Yes	\N	No, none did	No, I only became aware later	None did	Yes, I think it would	Yes
1354	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	Yes
1355	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, it has	Maybe
1356	No	0	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
1357	Yes	1	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	No, I don't think it would	No
1358	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	No, I don't think it would	Yes
1359	I don't know	1	No	I don't know	\N	\N	\N	\N	No, I don't think it would	Maybe
1360	Not eligible for coverage	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
1361	Yes	1	Yes	I don't know	\N	Some did	I was aware of some	None did	Maybe	Maybe
1362	I don't know	1	I am not sure	Yes	\N	No, none did	I was aware of some	None did	Maybe	Yes
1363	I don't know	1	No	No	\N	\N	\N	\N	Maybe	Yes
1364	\N	\N	\N	\N	1	Some did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1365	\N	\N	\N	\N	0	No, none did	N/A (not currently aware)	Some did	Yes, I think it would	Yes
1366	Yes	0	Yes	Yes	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, it has	Maybe
1367	\N	\N	\N	\N	1	Yes, they all did	No, I only became aware later	Some did	Maybe	Maybe
1368	Yes	0	I am not sure	Yes	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	No
1369	\N	\N	\N	\N	1	No, none did	N/A (not currently aware)	None did	Yes, I think it would	No
1370	\N	\N	\N	\N	0	No, none did	Yes, I was aware of all of them	None did	No, it has not	Yes
1371	Yes	0	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	None did	Maybe	No
1372	Yes	1	Yes	Yes	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	Yes
1373	Yes	1	No	I don't know	\N	Some did	N/A (not currently aware)	None did	Maybe	Maybe
1374	\N	\N	\N	\N	1	Some did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1375	No	1	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	Yes
1376	Yes	1	I am not sure	Yes	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	Yes
1377	Not eligible for coverage	1	No	No	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	No
1378	Yes	1	No	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1379	Yes	1	Yes	No	\N	Yes, they all did	I was aware of some	None did	Maybe	Yes
1380	Yes	1	Yes	No	\N	Some did	I was aware of some	None did	Yes, I think it would	Maybe
1381	Yes	1	No	No	\N	No, none did	Yes, I was aware of all of them	None did	Maybe	No
1382	\N	\N	\N	\N	1	Some did	No, I only became aware later	None did	Yes, I think it would	Yes
1383	Not eligible for coverage	1	\N	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Maybe
1384	Yes	1	I am not sure	No	\N	Some did	N/A (not currently aware)	None did	No, I don't think it would	Yes
1385	Yes	0	Yes	No	\N	\N	\N	\N	Yes, I think it would	Maybe
1386	I don't know	1	Yes	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1387	Yes	0	I am not sure	Yes	\N	Yes, they all did	I was aware of some	None did	Maybe	Yes
1388	Yes	1	No	I don't know	\N	Some did	I was aware of some	Some did	Yes, I think it would	Maybe
1389	I don't know	1	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
1390	I don't know	0	I am not sure	No	\N	I don't know	N/A (not currently aware)	None did	Yes, it has	Maybe
1391	Yes	1	No	No	\N	Yes, they all did	I was aware of some	Some did	Yes, I think it would	No
1392	Not eligible for coverage	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
1393	Not eligible for coverage	0	\N	Yes	\N	No, none did	Yes, I was aware of all of them	Some did	Yes, I think it would	Maybe
1394	Yes	1	Yes	No	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, I think it would	Maybe
1395	Yes	1	No	No	\N	\N	\N	\N	Yes, I think it would	Yes
1396	\N	\N	\N	\N	1	No, none did	Yes, I was aware of all of them	None did	Yes, I think it would	Yes
1397	Yes	1	Yes	I don't know	\N	Yes, they all did	I was aware of some	None did	Yes, I think it would	Yes
1398	Yes	1	Yes	No	\N	Some did	I was aware of some	None did	No, I don't think it would	Yes
1399	Yes	1	Yes	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	Yes
1400	Yes	1	Yes	Yes	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Maybe
1401	Yes	0	No	Yes	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1402	No	1	Yes	No	\N	Some did	I was aware of some	None did	Yes, I think it would	Yes
1403	No	1	I am not sure	No	\N	No, none did	No, I only became aware later	None did	Yes, I think it would	Yes
1404	\N	\N	\N	\N	0	Some did	No, I only became aware later	None did	Maybe	Yes
1405	I don't know	1	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	Maybe
1406	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Yes, I think it would	Yes
1407	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	Some did	Maybe	Yes
1408	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	No
1409	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
1410	I don't know	1	No	No	\N	I don't know	N/A (not currently aware)	None did	Yes, I think it would	Yes
1411	Yes	1	I am not sure	No	\N	\N	\N	\N	Yes, I think it would	Yes
1412	Not eligible for coverage	1	I am not sure	Yes	\N	\N	\N	\N	Maybe	No
1413	Yes	0	Yes	I don't know	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Yes
1414	Yes	1	Yes	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	Some did	Yes, I think it would	Yes
1415	Not eligible for coverage	0	I am not sure	I don't know	\N	\N	\N	\N	Maybe	Yes
1416	No	1	No	No	\N	\N	\N	\N	Maybe	No
1417	No	1	\N	No	\N	\N	\N	\N	Yes, I think it would	Yes
1418	Yes	1	I am not sure	No	\N	I don't know	N/A (not currently aware)	Yes, they all did	Yes, I think it would	Yes
1419	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Maybe	Yes
1420	\N	\N	\N	\N	1	I don't know	N/A (not currently aware)	None did	Maybe	Maybe
1421	No	1	No	No	\N	No, none did	N/A (not currently aware)	None did	Maybe	No
1422	I don't know	1	I am not sure	I don't know	\N	Yes, they all did	Yes, I was aware of all of them	None did	Yes, I think it would	No
1424	Not eligible for coverage	1	\N	No	\N	I don't know	N/A (not currently aware)	Some did	Yes, I think it would	Yes
1425	Yes	1	I am not sure	Yes	\N	Some did	No, I only became aware later	Some did	Yes, I think it would	Maybe
1426	I don't know	1	I am not sure	I don't know	\N	I don't know	N/A (not currently aware)	Some did	Yes, it has	Yes
1427	Yes	1	No	No	\N	Some did	I was aware of some	None did	Maybe	Yes
1428	\N	\N	\N	\N	1	Yes, they all did	I was aware of some	Some did	Maybe	No
1429	\N	\N	\N	\N	1	\N	\N	\N	No, it has not	No
1430	Yes	1	Yes	Yes	\N	Some did	I was aware of some	Some did	Yes, it has	Maybe
1431	I don't know	0	I am not sure	Yes	\N	No, none did	N/A (not currently aware)	None did	No, I don't think it would	Yes
1432	Yes	1	No	No	\N	\N	\N	\N	Yes, I think it would	Yes
\.


--
-- Name: EMPLOYEES pk_EMPLOYEES; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EMPLOYEES"
    ADD CONSTRAINT "pk_EMPLOYEES" PRIMARY KEY ("ID");


--
-- Name: MENTAL_HEALTH pk_MENTAL_HEALTH; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MENTAL_HEALTH"
    ADD CONSTRAINT "pk_MENTAL_HEALTH" PRIMARY KEY ("ID");


--
-- Name: MENTAL_HEALTH fk_MENTAL_HEALTH_ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."MENTAL_HEALTH"
    ADD CONSTRAINT "fk_MENTAL_HEALTH_ID" FOREIGN KEY ("ID") REFERENCES public."EMPLOYEES"("ID");


--
-- PostgreSQL database dump complete
--

