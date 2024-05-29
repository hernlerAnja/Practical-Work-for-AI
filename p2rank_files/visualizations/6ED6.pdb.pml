
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
        
        load "data/6ED6.pdb", protein
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
 
        load "data/6ED6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1572,1679,592,595,1599,1600,586,588,590,1203,1836,1543,1545,1584,1561,1573,1575,1237,2884,1239,1238,2872,2861,2867,2877,2881,2874,1209,768,769,935,785,632,643,645,766,773,767,1186,1187,644,752,1685,1686,1687,1701,1702,1704,1681,1684,1680,1039,1191,870,887,889,886,888,891,1827,1828,1709,614,607,608,610,615,606,628,629,1830,624,625,622,598] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4300,4298,4299,4301,4662,4634,4661,4741,4742,4101,3997,4248,4635,4636,4638,4746,4749,4743,4271,4276,4253,3648,3654,3657,3705,3707,3706,3660,3829,3830,5833,5856,5830,5832,3652,3814,5828,4249] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4622,4623,4747,4748,4749,3831,3950,4762,4764,4763,3948,3949,3951,3952,3677,3681,3847,3829,3830,3688,3660,3669,3672,3707,3932,3676,3684,3686,4607,4771] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [5262,5264,5350,5351,5352,5311,5313,5029,5031,5376,5377,5275,5065,5312,5296,5250] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [5904,5905,3323,3325,5896,5935,5937,5946,5949,3297,5876,5877,5887,5880,4179,5958,3286,3290,4180,4183] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1916,1918,2243,2245,1917,4891,4892,5200,5201,5202,5175,5199,2214,2212,2221,5168,5170,5176,5177] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3002,1117,1118,1121,228,2993,230,223,224,225,229,235,2931,2920,261,263,2949,262,2921] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2085,2086,1249,1253,1859,1576,1861,1254,1559,1849,2128,1851,1850,1852] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3839,4202,4204,4205,4174,4175,4224,3699,3716,3577,3621] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4959,4962,4922,4923,5472,4520,5496,4925,5476,5487,5493,4541] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        