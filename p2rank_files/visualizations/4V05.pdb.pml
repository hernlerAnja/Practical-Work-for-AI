
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
        
        load "data/4V05.pdb", protein
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
 
        load "data/4V05.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [198,184,189,193,194,195,196,203,192,1252,1168,1245,1246,733,736,737,1169,170,171,172,173,165,166,167,180,711,352,715,218,219,364,366,368,480,481,482,483,695,594,710,515,169,757,764,188,175,754,791,753,792] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3406,3407,3015,2994,2997,2461,2462,2612,2486,2487,2488,2463,2465,2467,2457,2458,2436,2438,2439,2440,2990,2434,2435,2441,2444,3480,3501,2855,3483,3484,2734,3490,2732,3492,3503,3014,3001,3002,3025,3053,3051,3052,2972,2976,2598,2610,2766,2971,2767,2956] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4084,4091,4080,4087,3942,3944,4066,4067,4071,1851,3954,1823,1710,3951,3936,4089,4090,4095,4102,1855,1844,1847,1848,1849,1850,1846,3869,3926,3866,1628,1629,1679,1682,1685,1695,1712,1713,1696,1701,1841,1842,846,1663,1665,1662,1862] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1687,1708,1711,1714,1402,1698,3992,4019,4052,4053,1333,1334,4021,1378,1721,1720,1725,1726,1360,1362,4029,3988,4017,1716,3991,3993,1715,1718] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4086,3841,3641,3808,4000,3664,4037,4036,3811,4084,4079,3945,3946,4061,4069] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3952,3955,3956,3957,1747,1785,1750,1751,1752,3949,3959,3967,3970,1809,1777,3928,3606,3646,3604,3622,3577,3578] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1704,1705,1397,1570,1793,1567,1600,1826,1836,1818] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1339,1340,1353,1365,1367,1368,1356,1349,1369,778,780,1638,781,1140,1142] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3658,3382,3583,3584,3879,3041,3379,3380,3611,3613] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        