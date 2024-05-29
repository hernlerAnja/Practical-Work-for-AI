
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
        
        load "data/2Y1N.pdb", protein
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
 
        load "data/2Y1N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1435,2014,2015,1438,1429,2569,1783,1797,1798,1788,1794,1462,1805,1807,1808,2601,2602,2603,2008,908,1799,1804,1806,1809,1812,2011,2012] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [5142,4911,4566,4563,4590,4561,4565,4557,4034,4036,4037,4584,4934,4936,4586,5139,5136,5140,5143,4937,4922,4926,4001,4927,4940,4916] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4088,4662,4663,4112,4113,4085,4086,4057,4726,4699,4207,4691,4183,4186,4182,4179,4181,1022,1023,1024,4697,5177,5178,4058] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4160,4163,4164,441,4169,4170,418,1009,1012,1014,1036,4152,465,462,464,417,494] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1843,1840,1822,768,229,215,207,197,200,240,866,838,227,1823,842,210,250,205,1849,843,1852,806,807,763,765,834,836,206] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4552,4599,4600,4618,4619,4553,5791,5792,5850,4548,4547,4550,4578,4554,4555,4557,4602,3741,3742,4601,3733,4603,4580,4582,5772,5774,5768,3766,3767,5790] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4977,4978,4980,3371,4950,4951,4968,3969,3971,3966,3993,3970,3962,3965,3994,3964,3355,3368,3357,3334,3335,3338,3932,3934,3935,3891,3325,3893,3370] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1797,2565,1776,1793,1796,1755,1765,1791,1792,1882,2382,1763,2562,2590,2591,2592,2589,1741,2560,2556] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1454,1471,1472,1473,1474,1477,1424,1425,1475,2611,1427,1430,2638,2676,2696,2636,2637,2614,1450,604,605] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1054,1534,1563,1597,1535,1598,2049,2050,1053,960,958,1058,1079] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3359,3366,3376,4027,3372,3375,3415,3404,5157,5162,3362,3363,5153,4058,3438,4053,4025,4054] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        