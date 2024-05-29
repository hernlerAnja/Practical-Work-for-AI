
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
        
        load "data/4UWY.pdb", protein
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
 
        load "data/4UWY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1906,1907,1908,1909,4198,4200,4226,4227,2051,4225,4224,1824,1875,939,1878,1882,4186,1858,1856,1859,1861,4204,4192,4199,4201,4190,4220,4223,915,916,2077,934,928,923,938,884,859,1873,2045,2027,2028,4078,4075,4081,4092,2048,2055,2052,4080,4217,3996,3993,4064] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [795,774,791,792,1310,196,193,194,205,206,753,632,373,388,749,222,223,224,198,199,802,1295,1400,1311,1392,1281,1399,389] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1258,1256,1257,1259,1535,1519,1524,1583,1584,1483,1430,1235,1706,1622,1487,1493,1496,1479,1481,1705,1237,1240,1476,1482,1459,1434,1436,1440,1443,1423,1538,1539,1295,1296,1400,1499,1623,1683,1684,1685] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3595,3221,3224,3581,3611,3214,3217,3688,3694,3695,2810,2811,3052,3053,3054,3610,3684,3687,2608,2609,2614,2615,2616,2618,2645,2646,2610,2612,3196,2795,3171,3175,3193,3182] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2053,2055,2052,2054,2056,2134,2060,2133,4248,4080,4033,4031,4030,4238,4244,3996,4050,4053,3993,4047,2059,4223,4231] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3938,4369,4364,4366,4367,4212,4219,4365,3968,4073,4216,4217] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        