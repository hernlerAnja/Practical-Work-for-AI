
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
        
        load "data/4UWB.pdb", protein
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
 
        load "data/4UWB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1782,1810,1792,1798,1947,1793,1821,1807,1809,4278,4279,4299,4150,1949,1953,1954,1955,1725,1960,1967,4303,4304,4306,4310,1800,1945,1946,4132,4159,4160,4075,4142,4148,1956,4295,4296,4302,4316,4317,1776] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [173,171,215,217,216,201,722,353,726,744,174,740,492,367,368,369,721,524,525,603,605,747,765,1244,1245,170,176,179,182,177,1215,1322,1328,1321,1329,1229] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3672,3675,3692,3569,3131,3598,3599,2725,3583,3682,3683,3676,2532,2533,2534,3127,3106,3124,3125,2538,2539,2540,2542,2543,2545,2544,3134,3080,3081,3085,2721,2723,2724,2964,2884,2851,2883,2709,2536,2537,2588,2589,2590] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3846,3847,4151,4152,4210,4017,4247,4245,4296,4298,4291,4440,4443,4047,4442,3845,4286,4236,4273,4281] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1801,1923,1941,1946,1931,1897,1948,1697,1497,1520,1664,1667] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1956,4110,4112,4328,4107,4109,4132,4126,4129,3216,3240,3252,1933,1929,1950,1953,1954,1955,1957,1960] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2725,3704,3706,2797,2551,2552,2555,2571,2560,2564,2567,2724,2821,2822,2825,2827,2850,2741,2794,2795,2796,2817,2590,2572,2575,2729,2562,2563] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3810,3783,1881,3784,4167,4172,4176,3828,4168,4173,4134,4155,4161,4165,3852,4163,4162,1851,1853,1852,3812] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4381,900,4416,902,909,4313,4353,865,4305,4307,1978,4311,4382,4379] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3864,3570,3571,3817,3819,3572,4085,3148,3150,3789,3790,3803,3149] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2166,2168,1625,1628,1614,1615,1617,2184,2163,2169,2173,1126] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [791,1440,1453,1212,1216,1218,1514,1467,1736,1469] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        