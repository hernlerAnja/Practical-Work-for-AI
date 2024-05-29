
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/6B9L.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/6B9L.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [315,314,318,319,320,325,329,316,5604,5567,197,5561,5562,5566,5752,5747,5748,5602,200,216,5617,5618,3139,3130,3131,2993,3009,5790,2971,3116,3117,3121,3127,3118,5753,169,5803,5804,178,337,328,5788] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [4352,4508,4509,5710,5711,5695,5697,4500,5840,5841,5842,5846,4371,4489,4490,4496,4485,4486,4487,4372,4374,4390,1732,5896,5897,1724,5655,5659,5660,5654,5881,5883,5845,1564,1583,1602,1710,1711,1712,1714,1720,5709,1586] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [455,457,1188,1189,1850,1852,1865,466,470,471,472,474,448,2204,460,1867,1869,1871,2596,469,473,32,1866,1868,1870,475,476,1861,2595,2187,2193,2196,2200,1864,805,808,456,788,801,1836,1843,1855,1418,1859,1860] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [5561,5565,5566,5777,646,648,1024,1026,609,5771,5782,5783,3846,5784,1029,1033,1036,1002,329,330,5752,5591,3824,3826,5747,5751,5593,5599,5602,5592,3829,3832,5618,3411,3439,3448,3450,3802,3801,5611,1020,1031,1050,5595,5596,5597,637,5780,5779,5785,5788,5797,353,5778,5781,657,5804,328] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [3257,3259,3268,3272,3273,3274,3275,3277,3276,3278,3985,3271,3603,4210,4626,4641,4627,4963,4628,4643,5354,5355,4642,4645,4647,4644,4646,4636,4631,4637,4619,3610,3243,3250,3262,3267,3266,2825,3607,4969,4976,4980,4983,4612] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5845,5871,5872,5878,5870,5874,5875,5876,5216,2401,5197,2428,2432,2435,2400,5880,5881,5890,1725,5658,5659,5654,2045,2047,2425,2008,2423,1723,1747,2036,5840,5192,5190,2449,5199,5678,5684,5681] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [5190,5690,5168,5164,5167,5195,2449,5199,5202,5840,5843,4784,5192,4821,4823,5692,5695,5704,5678,5684,5685,5686,5687,5688,5681,5689,5845,5216,5197,5658,5659,2425,4812,4813,4832,4816,5186] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [1548,1544,1546,829,831,161,163,158,166,162,164,2963,1530,1532,1515,1519,2967,128,133,135,2229,2230,2227,2228,1513,1514,111,1540,1545,2950] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [884,784,783,819,773,896,769,898,816,818,813,814,815,817,1212,1214,846,835,851,886,834,841,836] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [5006,4997,4998,4999,3245,4982,4609,4616,4983,4300,3625,3626,3609,3624,4614,3610,3240,3633,2915] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [3683,3684,3686,3621,3571,3575,3653,3656,3657,3697,3615,3616,3617,3618,3619,3620,4008,4010,3637] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [4342,4343,1550,4331,4341,1552,1553,1548,1546,829,830,1521,828,128] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [2928,2959,2960,4332,157,2955,2957,4319,2953,5003,5004,5005,4302,4317,168,170,174] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5911,5912,4373,3630,3632,3635,4382,4279,3641,4375,4379,4310,4480,4481,4285,4368,4309] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [4974,4972,4976,4980,3246,2896,2841,2871,3262,3267,2836,3266,2831,2834,2838,2825,3243,3250] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [3630,3631,3632,4309,4285,4338,2947,2951,4334,4336,1543,2937,4340] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [106,105,2229,199,205,208,2232,2236,2237,2238,5622,5632,5633,136,201,308,111,135] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [2234,2212,2215,2621,2168,2619,2240,2250,2295,1820,2297,2253,2283,2285,2172,2217] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [4338,2947,2950,2951,1540,1543,1547,4337,2944,162,164,1544] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        