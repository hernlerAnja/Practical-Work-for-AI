
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
        
        load "data/3W2C.pdb", protein
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
 
        load "data/3W2C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [285,133,134,157,158,97,98,104,135,137,136,138,646,952,645,637,640,591,593,594,452,951,598,616,619,1019,1025,1018,283,99,101,102,268,610,612,106,105] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5062,5063,5090,5092,5600,5093,5055,5056,5061,5087,5088,5089,5091,5111,5239,5547,5545,5406,5897,5898,5964,5112,5552,5570,5548,5064,5591,5594,5626,5573,5057,5060,5059,5564,5566,5559,5965,5971] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4248,3437,3438,3461,3462,3406,3407,3409,3950,3572,3895,3898,3756,3902,3909,3920,3923,4247,3914,3916,3410,4311,4314,4315,3439,3441,3440,3442,3443,3589,4321,3588,3897,3941,3944] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1796,2300,2598,1761,1763,1764,2264,2266,2106,2597,2270,2252,2259,1939,1792,1794,1938,1815,1816,2247,2248,1922,2665,2671,1795,1797,2029,2664,1760,1766,1768,2294,2273,2291,2299] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [5850,6132,6133,5825,6113,5798,5890,5958,5959,6077,6105,6106,6104,6107,6108,5999,6000] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4240,4309,4308,4200,4230,4232,4313,4174,4424,4425,4455,4456,4175,4350,4427,4463,4483] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2777,2524,2525,2590,2656,2658,2806,2700,2805,2579,2554,2550,2578,2582,2663,2833,2498] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2785,3161,3193,2474,2504,2814,2477,3160,3237,3273,3274,3241] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [6494,6085,6461,6493,6114,6460,6537,6541,6573,5804,6574,5777,5774] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [290,549,566,568,291,166,168,169,272,164,167,273,276,70,72,71,26,27] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1168,1514,820,850,1627,823,1591,1628,1548,1515,1595,1547,1139] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4121,4127,4154,4464,4810,4124,4811,4843,4435,4887,4891,4924,4923] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1049,1214,1259,1260,1286,660,662,927,701,1058,928,918,919,1060] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3334,3380,3580,3577,3467,3470,3472,3473,3595,3379,3596,3853,3378,3335] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1946,1688,1689,2203,1945,1732,1733,1734,1823,1826,1827,1822,1824] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        