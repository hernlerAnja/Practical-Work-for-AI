
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
        
        load "data/6FT9.pdb", protein
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
 
        load "data/6FT9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2969,2970,3109,3230,2967,2945,3600,2933,2939,3093,3548,3551,3552,3978,2936,3559,2934,3382,3524,3525,3527,3529,3530,3534,2940,2952,2942,3107,2990,2988,2989,3949,3977,3561,3568,3572,3573,4220,4219,4221,3950,3951,3961] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [7105,7156,7157,2152,7120,7458,1926,7184,7189,7191,7457,7688,7675,7676,7677,1599,7090,7095,7098,7100,2132,7657,7655,7656,7208,2131,1664,1666,1928,1932,1933,2150,2151,2163,2161,1569,1570,1632,1562,1567,1659,7438,7451,7453] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [6724,6736,6347,6980,6329,6752,6753,6981,6982,5715,5717,5746,5764,5766,5765,5869,6300,6163,6299,6343,6348,6334,6336,5708,5709,5710,5712,6323,6326,6375,6725,5716,5718,5720,5721,5885,6304,6305,6987,6011,6983,5745] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1181,1452,1454,1448,1169,1197,1444,1446,1447,1451,1170,793,820,788,792,774,1198,1445,771,772,779,768,781,754,1157,1158,1171,196,214,216,215,319,166,165,158,159,160,164,162,766,168,171,195,335,747] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1578,1580,1139,1140,1141,1157,1158,1589,1453,1181,1454,1170,1576,1572,1132,1475,1474,1467,1469,1471,400,402,190,334,335,350,455,349,178,181,185,186,193,195,386,425,397,426,424,427,430,390,391,1566,7645] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [6694,6695,6696,6712,6713,7114,7118,7126,5955,5731,5735,5736,5740,5741,5743,5745,5957,5900,5884,5885,6989,6990,7003,5728,6736,5941,5945,5946,6687,7011,7107,7109,7113,7005,7007,7010,5978,5980,5981,5952,5899] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [4250,4229,2969,3108,3109,4228,2967,4244,3199,3176,2955,2959,3174,3160,3164,3165,3123,3124,2964,2965,3171,3961,3919,3921,3937,3938,3920,4359] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3356,3358,3803,3805,3864,3863,3829,5988,5989,5990,6025,5997,3357,3836,5992,3871,3830,3831,3862,3872] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3953,3954,3587,3589,3591,3658,4379,4380,4381,4391,4392,4652,4598] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [6366,7134,7136,7146,7347,7402,6728,6364,6729,7147,6433] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3682,3609,3611,3684,4137,4133,3664,4151,4152,4146,4150,4156,3677,3687,3691,3672,3694,3720] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [6687,7011,6686,7107,7108,7232,7084,7097,7009,7022,7005,7007,7010,6002,6001] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [6687,6686,7262,7107,7186,7187,7232,6685,7297,7260,7150,7154] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [902,829,865,1362,1371,1377,1376,892,897,907,911,914,915,940,942] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [5431,5432,5433,5434,5467,5442,7030,7032,6059,7034,6057,6058,6061,6643,6060] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        