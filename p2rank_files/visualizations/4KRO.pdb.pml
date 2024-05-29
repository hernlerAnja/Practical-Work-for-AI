
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
        
        load "data/4KRO.pdb", protein
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
 
        load "data/4KRO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7985,7989,8007,7426,7548,7547,7819,7820,7969,7788,8006,8015,8016,8533,8534,8038,8039,8042,7405,8024,8025,7382,7172,7173,7946] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [354,385,388,355,628,2527,2561,20,384,655,656,659,641,642,2539,2545,632,2546,2549,2147,2149,2559,933,949,950,898,2129,2540,2541,2117,630,631] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [4500,12054,3246,12037,12040,12406,3133,4488,3545,3547,3548,4067,4491,3240,3242,3515,4030,4031,4464,3580,3582,4105,3150,3152,4508,4509,13142,13143,12051,12397,4106,12399,4507] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [3045,8294,8295,8192,3089,3465,8364,8329,8366,8384,8382,8383,8385,3495,3973,3974,4400,8113,8381,8138,8150,8155,4006,4431] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [548,550,486,526,485,446,447,445] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [6714,6715,6716,6855,2348,2349,2352,2353,6971,6973,2411,6746,6747,2331,6832,6833,6618,2378,2379,2382,2384,2377,6676,6617,6649,6941] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [180,239,183,185,186,132,60,83,86,96,227,59,436,437] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [447,289,287,288,595,445,238,240,548,550,526] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [4106,12399,13140,13142,13143,12051,13133,13134,12380,12382,12083,12086] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [1328,1667,1649,1325,1329,1330,1528,1529,1586,1628,1527,1584,1625] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [14040,10587,10588,11028,14317,14008,14009,10998,14018] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [4101,4637,4128,12423,12426,4639,12453,12436,12420,12433,4116,4119,4125,3596,3599] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [13133,13134,12380,12382,13069,12083,12086,13140,13073] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [12294,12296,5394,13175,12381] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [4552,5336,13102,13103,13115,4533,5301,13104,4532,5299,9305,9368,9325,9327,9369] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [4104,4106,12374,12399,12425,13140,13142,12380,4102,4621,4624,12426,4105] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [10034,10042,10043,9840,9841,12196,9802,9804,12208,12219,10048,9122,9803,9805,10066,10068,12195,12194,12193] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [8576,9967,9968,9996,9979,9994,12486,12513,12487,8563,8564,8565,8566,12271,12278,12285,12254,12275,10007] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [4219,4714,5739,5740,4773,5776,5799,5777,5798,5800] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [10278,10261,10275,11535,11537,10294,10300,13616,13594,13595,10281,10323,13645,10322,10283,13590,13592,13593] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        